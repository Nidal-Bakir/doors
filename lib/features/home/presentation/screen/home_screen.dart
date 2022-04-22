import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/widgets/restart_app.dart';
import 'package:doors/features/home/presentation/screen/menu_screen.dart';
import 'package:doors/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:doors/features/home/presentation/widgets/keep_page_alive.dart';
import 'package:doors/features/recent_posts/presentation/widgets/recent_posts_list.dart';
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
        androidCloseOnBackTap: true,
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
    if (!_usingNavigationBar) {
      _navigationBarController.moveToIndex(_pageController.page?.round() ?? 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final _colorScheme = Theme.of(context).colorScheme;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: _colorScheme.surface,
          ),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            color: _colorScheme.primary,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          extendBody: true,
          appBar: AppBar(
            title: Text(
              'DOORS',
              style: Theme.of(context).textTheme.headline6,
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
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
      ],
    );
  }
}
