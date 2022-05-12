import 'dart:async';
import 'dart:io';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/primary_color_background_for_scaffold.dart';
import 'package:doors/core/widgets/restart_app.dart';
import 'package:doors/features/home/presentation/screen/menu_screen.dart';
import 'package:doors/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:doors/features/home/presentation/widgets/keep_page_alive.dart';
import 'package:doors/features/recent_posts/presentation/widgets/recent_posts_list.dart';
import 'package:doors/features/search/posts_search/presentation/screens/posts_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  final ZoomDrawerController _drawerController = ZoomDrawerController()..open;

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthLogoutSuccess) {
          RestartApp.restart(context);
        }
      },
      child: ZoomDrawer(
        menuScreenWidth: 220,
        style: DrawerStyle.defaultStyle,
        isRtl: Directionality.of(context) == TextDirection.rtl,
        controller: _drawerController,
        menuScreen: const MenuScreen(),
        mainScreen: const MainScreen(),
        menuBackgroundColor: Theme.of(context).colorScheme.primary,
        borderRadius: 24.0,
        mainScreenTapClose: true,
        showShadow: true,
        angle: -10.0,
        mainScreenScale: 0.01,
        shadowLayer1Color: Colors.transparent,
        shadowLayer2Color:
            Theme.of(context).colorScheme.surface.withOpacity(0.3),
        slideWidth: MediaQuery.of(context).size.width * 0.65,
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late final _pageController = PageController(initialPage: 1);
  late final _navigationBarController = CustomBottomNavigationBarController();
  var _usingNavigationBar = false;
  var _currentOpenedPageIndex = 1;
  @override
  void initState() {
    _pageController.addListener(_onPageChanged);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.removeListener(_onPageChanged);
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged() {
    // move the navigation bar if the user is scrolling using the page view
    // and notify the navigation bar with the new page index.
    if (!_usingNavigationBar && _isDifferentPage()) {
      setState(() {
        _currentOpenedPageIndex = (_pageController.page?.round() ?? 0);
      });
      _navigationBarController.moveToIndex(_pageController.page?.round() ?? 0);
    }
  }

  bool _isDifferentPage() =>
      (_pageController.page?.round() ?? 0) != _currentOpenedPageIndex;

  @override
  Widget build(BuildContext context) {
    final _colorScheme = Theme.of(context).colorScheme;
    return WillPopScope(
      onWillPop: () async {
        final zoomDrawer = ZoomDrawer.of(context)!;
        if (Platform.isAndroid && zoomDrawer.isOpen()) {
          zoomDrawer.close();
          return false;
        }
        return true;
      },
      child: PrimaryColorBackgroundForScaffold(
        scaffoldWidget: Scaffold(
          key: getHomeScaffoldGlobalKey(),
          backgroundColor: Colors.transparent,
          extendBody: true,
          appBar: AppBar(
            title: _CurrentOpenedTabName(
              currentOpenedTapIndex: _currentOpenedPageIndex,
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(PostsSearchScreen.routeName);
                  },
                  icon: const Icon(Icons.search)),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage(
                    'assets/icons/message.png',
                  ),
                ),
              ),
            ],
            leading: InkWell(
              onTap: () {
                ZoomDrawer.of(context)?.open();
              },
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: ImageIcon(
                  AssetImage('assets/icons/menu.png'),
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
          bottomNavigationBar: CustomBottomNavigationBar(
            controller: _navigationBarController,
            backgroundColor: _colorScheme.secondary,
            itemBackgroundColor: _colorScheme.secondary,
            initTap: 1,
            items: [
              CustomBottomNavigationBarItem(
                assetsIconPath: 'assets/icons/internal-ship.png',
              ),
              CustomBottomNavigationBarItem(
                assetsIconPath: 'assets/icons/need.png',
              ),
              CustomBottomNavigationBarItem(
                assetsIconPath: 'assets/icons/offered.png',
              ),
            ],
            onTap: (index) async {
              _usingNavigationBar = true;
              await _pageController.animateToPage(index,
                  curve: Curves.fastLinearToSlowEaseIn,
                  duration: const Duration(milliseconds: 600));
              _usingNavigationBar = false;
              setState(() {
                _currentOpenedPageIndex = index;
              });
            },
          ),
          body: Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: PageView.builder(
              itemCount: 3,
              controller: _pageController,
              itemBuilder: (context, index) {
                if (index == 1) {
                  return const KeepPageAlive(
                      child: RecentPostsList(postType: PostType.need));
                }
                if (index == 2) {
                  return const KeepPageAlive(
                      child: RecentPostsList(postType: PostType.offer));
                }
                return const KeepPageAlive(
                  child: Center(
                    child: Text('internal ships'),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _CurrentOpenedTabName extends StatefulWidget {
  final int currentOpenedTapIndex;
  const _CurrentOpenedTabName({Key? key, required this.currentOpenedTapIndex})
      : super(key: key);

  @override
  State<_CurrentOpenedTabName> createState() => _CurrentOpenedTabNameState();
}

class _CurrentOpenedTabNameState extends State<_CurrentOpenedTabName>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 500));
  late final _animation = Tween<Offset>(
          end: Offset.zero, begin: const Offset(0, -3))
      .animate(CurveTween(curve: Curves.easeInOutCubic).animate(_controller));
  late final _animation2 = Tween<Offset>(
          end: const Offset(0, 3), begin: const Offset(0, 0))
      .animate(CurveTween(curve: Curves.easeInOutCubic).animate(_controller));
  @override
  void didChangeDependencies() {
    Future.delayed(const Duration(seconds: 2), () {
      if (_controller.isCompleted || _controller.isDismissed) {
        _controller.forward();
      }
    });
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant _CurrentOpenedTabName oldWidget) {
    _controller.reverse();
    Future.delayed(const Duration(seconds: 2), () {
      if (_controller.isCompleted || _controller.isDismissed) {
        _controller.forward();
      }
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final _tabsName = [
      context.loc.jop_offers,
      context.loc.need_service,
      context.loc.offered_service,
    ];
    final _textStyle = Theme.of(context).textTheme.headline6;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SlideTransition(
          position: _animation,
          child: Text(
            'DOORS',
            style: _textStyle,
          ),
        ),
        SlideTransition(
          position: _animation2,
          child: Text(
            _tabsName[widget.currentOpenedTapIndex],
            style: _textStyle,
          ),
        )
      ],
    );
  }
}
