import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/primary_color_background_for_scaffold.dart';
import 'package:doors/features/search/models/search_filter.dart';
import 'package:doors/features/search/presentation/managers/posts_search_bloc/posts_search_bloc.dart';
import 'package:doors/features/search/presentation/widgets/search_filter_overlay.dart';
import 'package:doors/features/search/presentation/widgets/search_posts_result_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PostsSearchScreen extends StatefulWidget {
  final PostsViewFilter postsTypeToSearch;
  static const routeName = '/posts-search';
  const PostsSearchScreen({
    Key? key,
    required this.postsTypeToSearch,
  }) : super(key: key);

  @override
  State<PostsSearchScreen> createState() => _PostsSearchScreenState();
}

class _PostsSearchScreenState extends State<PostsSearchScreen> {
  var _showFilters = false;
  var _searchFilter = SearchFilter();
  late final _searchTextFieldController = TextEditingController();
  Key? _searchOverlayKeyForReset;
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return BlocProvider<PostsSearchBloc>(
      create: (context) => GetIt.I.get<PostsSearchBloc>(
        param1: widget.postsTypeToSearch,
      ),
      child: Builder(builder: (context) {
        return PrimaryColorBackgroundForScaffold(
          scaffoldWidget: WillPopScope(
            onWillPop: () async {
              if (_showFilters) {
                setState(() {
                  _showFilters = false;
                });
                return false;
              }
              return true;
            },
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.transparent,
              appBar: _CustomAppBar(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                        ),
                      ),
                      Flexible(
                        child: TextField(
                          onChanged: (searchPattern) {
                            if (searchPattern != _searchFilter.title) {
                              _searchFilter =
                                  _searchFilter.copyWith(title: searchPattern);
                              context
                                  .read<PostsSearchBloc>()
                                  .add(PostsSearchStarted(_searchFilter));
                            }
                          },
                          controller: _searchTextFieldController,
                          cursorColor: _theme.colorScheme.secondary,
                          decoration: InputDecoration(
                            hintStyle: _theme.textTheme.subtitle1,
                            hintText: widget.postsTypeToSearch ==
                                    PostsViewFilter.services
                                ? context.loc.search_for_service
                                : context.loc.search_for_jobs,
                            fillColor: _theme.colorScheme.onPrimary,
                            suffixIcon: Material(
                              color: Colors.transparent,
                              child: IconButton(
                                onPressed: () {
                                  _searchFilter =
                                      _searchFilter.copyWith(title: null);
                                  context
                                      .read<PostsSearchBloc>()
                                      .add(PostsSearchStarted(_searchFilter));
                                  _searchTextFieldController.text = '';
                                },
                                icon: const Icon(Icons.clear_rounded),
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _showFilters = !_showFilters;
                          });
                        },
                        icon: const Icon(
                          Icons.filter_list_rounded,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              body: Stack(
                children: [
                  const SearchPostsResultList(),
                  GestureDetector(
                    onVerticalDragEnd: (details) {
                      if (details.velocity.pixelsPerSecond.dy < 0.0) {
                        setState(() {
                          _showFilters = false;
                        });
                      }
                    },
                    child: StatefulBuilder(
                      builder: (context, filterOverlaySetState) {
                        return AnimatedSlide(
                          duration: const Duration(milliseconds: 300),
                          offset: _showFilters
                              ? Offset.zero
                              : const Offset(0, -1.1),
                          curve: Curves.easeInOutCubic,
                          child: AnimatedScale(
                            curve: Curves.easeInOutCubic,
                            duration: const Duration(milliseconds: 300),
                            scale: _showFilters ? 1 : 0.7,
                            child: SearchFilterOverlay(
                              key: _searchOverlayKeyForReset,
                              postsView: widget.postsTypeToSearch,
                              onReset: () {
                                _searchFilter = SearchFilter(
                                  title: _searchFilter.title,
                                );

                                filterOverlaySetState(() {
                                  _searchOverlayKeyForReset = UniqueKey();
                                });
                              },
                              onNewFilterApplied: (searchFilter) {
                                _searchFilter = searchFilter.copyWith(
                                    title: _searchTextFieldController.text);
                                if (_searchFilter.title != null &&
                                    _searchFilter.title!.isNotEmpty) {
                                  context
                                      .read<PostsSearchBloc>()
                                      .add(PostsSearchStarted(_searchFilter));
                                }
                                setState(() {
                                  _showFilters = false;
                                });
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  const _CustomAppBar({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: child);
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56.0);
}
