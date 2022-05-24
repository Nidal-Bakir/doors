import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/recent_posts/repository/recent_job_posts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'recent_job_posts_event.dart';
part 'recent_job_posts_state.dart';
part 'recent_job_posts_bloc.freezed.dart';

class RecentJobPostsBloc
    extends Bloc<RecentJobPostsEvent, RecentJobPostsState> {
  final ManagePostBloc _managePostBloc;
  final RecentJobPostsRepository _recentJobPostsRepository;
  RecentJobPostsBloc(
    this._recentJobPostsRepository,
    this._managePostBloc,
  ) : super(const RecentJobPostsInProgress()) {
    
    on<RecentJobPostsLoaded>((event, emit) async {
      await _onRecentJobPostsLoaded(event, emit);
    }, transformer: bloc_concurrency.droppable());

    on<RecentJobPostsRefreshed>((event, emit) async {
      await _onRecentJobPostsRefreshed(event, emit);
    }, transformer: bloc_concurrency.restartable());

    // so the deleted or the edit post will not appear if they loaded locally
    _managePostBloc.stream.listen((event) {
      if (event is ManagePostDeleteSuccuss || event is ManagePostEditSuccuss) {
        add(const RecentJobPostsRefreshed());
      }
    });
  }

  Future<void> _onRecentJobPostsLoaded(
      _, Emitter<RecentJobPostsState> emit) async {
    emit(const RecentJobPostsInProgress());

    final recentJobPosts = await _recentJobPostsRepository.getRecentJobPosts();
    recentJobPosts.fold(
      (errorAndCachedJobPosts) => emit(
        RecentJobPostsLoadFailure(
          errorAndCachedJobPosts.head,
          errorAndCachedJobPosts.tail,
        ),
      ),
      (jobPosts) => emit(RecentJobPostsLoadSuccess(jobPosts)),
    );
  }

  Future<void> _onRecentJobPostsRefreshed(
      _, Emitter<RecentJobPostsState> emit) async {
    emit(const RecentJobPostsInProgress());
    final recentJobPosts =
        await _recentJobPostsRepository.getRecentJobPosts(fullRefresh: true);
    recentJobPosts.fold(
        (errorAndCachedJobPosts) => emit(
              RecentJobPostsLoadFailure(
                errorAndCachedJobPosts.head,
                UnmodifiableListView([]),
              ),
            ),
        (jopPosts) => emit(RecentJobPostsLoadSuccess(jopPosts)));
  }
}
