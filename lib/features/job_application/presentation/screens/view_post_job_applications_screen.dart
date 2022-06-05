import 'dart:async';

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/custom_slide_transition.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/no_internet_connection.dart';
import 'package:doors/core/widgets/no_result_found.dart';
import 'package:doors/core/widgets/primary_color_background_for_scaffold.dart';
import 'package:doors/features/job_application/presentation/managers/view_post_job_applications_bloc/view_post_job_applications_bloc.dart';
import 'package:doors/features/job_application/presentation/widgets/job_application_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ViewPostJobApplicationsScreen extends StatefulWidget {
  static const routeName = '/view-post-job-applications';
  final JobPost jobPost;
  const ViewPostJobApplicationsScreen({Key? key, required this.jobPost})
      : super(key: key);

  @override
  State<ViewPostJobApplicationsScreen> createState() =>
      _ViewPostJobApplicationsScreenState();
}

class _ViewPostJobApplicationsScreenState
    extends State<ViewPostJobApplicationsScreen> {
  var _refreshIndicatorCompleter = Completer<void>();
  var _jobApplicationsCount = 0;

  @override
  Widget build(BuildContext context) {
    return PrimaryColorBackgroundForScaffold(
      scaffoldWidget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            context.loc.job_applications,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        body: BlocProvider<ViewPostJobApplicationsBloc>(
          create: (_) => GetIt.I.get<ViewPostJobApplicationsBloc>()
            ..add(
              ViewPostJobApplicationsLoaded(widget.jobPost),
            ),
          child: Builder(
            builder: (context) => BlocListener<ViewPostJobApplicationsBloc,
                ViewPostJobApplicationsState>(
              listener: (context, state) {
                if (state is ViewPostJobApplicationsLoadFailure) {
                  if (!_refreshIndicatorCompleter.isCompleted) {
                    _refreshIndicatorCompleter.complete();
                  }
                  showErrorSnackBar(
                      context, state.error.getLocalMessageError(context));
                }
              },
              child: NotificationListener<ScrollNotification>(
                onNotification: (notification) => notificationListener(
                  notification: notification,
                  onNotify: () {
                    final _viewPostJobApplicationsBloc =
                        context.read<ViewPostJobApplicationsBloc>();
                    if (_viewPostJobApplicationsBloc.state
                            is ViewPostJobApplicationsLoadSuccess &&
                        canLoadMoreData(_jobApplicationsCount)) {
                      _viewPostJobApplicationsBloc
                          .add(ViewPostJobApplicationsLoaded(widget.jobPost));
                    }
                  },
                ),
                child: RefreshIndicator(
                  onRefresh: () {
                    _refreshIndicatorCompleter = Completer<void>();
                    context
                        .read<ViewPostJobApplicationsBloc>()
                        .add(ViewPostJobApplicationsRefreshed(widget.jobPost));

                    return _refreshIndicatorCompleter.future;
                  },
                  child: CustomScrollView(
                    slivers: [
                      const SliverToBoxAdapter(),
                      BlocBuilder<ViewPostJobApplicationsBloc,
                          ViewPostJobApplicationsState>(
                        buildWhen: (previous, current) =>
                            current is ViewPostJobApplicationsLoadSuccess,
                        builder: (context, state) {
                          if (state is ViewPostJobApplicationsInProgress) {
                            return const SliverToBoxAdapter();
                          }
                          final _viewPostJobApplicationsLoadSuccess =
                              (state as ViewPostJobApplicationsLoadSuccess);

                          if (!_refreshIndicatorCompleter.isCompleted) {
                            _refreshIndicatorCompleter.complete();
                          }
                          _jobApplicationsCount =
                              _viewPostJobApplicationsLoadSuccess
                                  .jobApplications.length;

                          return SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                final _jopApplication =
                                    _viewPostJobApplicationsLoadSuccess
                                        .jobApplications[index];
                                return CustomSlideTransition(
                                  child: JobApplicationItem(
                                    jobApplication: _jopApplication,
                                  ),
                                );
                              },
                              childCount: _jobApplicationsCount,
                            ),
                          );
                        },
                      ),
                      BlocBuilder<ViewPostJobApplicationsBloc,
                          ViewPostJobApplicationsState>(
                        builder: (context, state) {
                          return SliverFillRemaining(
                            fillOverscroll: false,
                            hasScrollBody: false,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 20),
                              child: state.when(
                                inProgress: () => const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 16.0),
                                  child: Center(
                                    child: LoadingIndicator(),
                                  ),
                                ),
                                loadSuccess: (posts) => posts.isEmpty
                                    ? const NoResultFound()
                                    : const SizedBox.shrink(),
                                loadFailure: (error, cachedPosts) {
                                  if (cachedPosts.isEmpty) {
                                    return NoInternetConnection(
                                      onRetry: () {
                                        context
                                            .read<ViewPostJobApplicationsBloc>()
                                            .add(
                                              ViewPostJobApplicationsLoaded(
                                                widget.jobPost,
                                              ),
                                            );
                                      },
                                      fullScreen: true,
                                    );
                                  } else {
                                    return NoInternetConnection(
                                      onRetry: () {
                                        context
                                            .read<ViewPostJobApplicationsBloc>()
                                            .add(
                                              ViewPostJobApplicationsLoaded(
                                                widget.jobPost,
                                              ),
                                            );
                                      },
                                    );
                                  }
                                },
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
