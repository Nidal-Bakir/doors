import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/models/job_application.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/features/job_application/repository/view_post_job_applications_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'view_post_job_applications_event.dart';
part 'view_post_job_applications_state.dart';
part 'view_post_job_applications_bloc.freezed.dart';

class ViewPostJobApplicationsBloc
    extends Bloc<ViewPostJobApplicationsEvent, ViewPostJobApplicationsState> {
  final ViewPostJobApplicationsRepository _viewPostJobApplicationsRepository;

  ViewPostJobApplicationsBloc(this._viewPostJobApplicationsRepository)
      : super(const ViewPostJobApplicationsInProgress()) {
    on<ViewPostJobApplicationsLoaded>(
      (event, emit) async {
        await _onViewPostJobApplicationsLoaded(event, emit);
      },
      transformer: bloc_concurrency.droppable(),
    );
    on<ViewPostJobApplicationsRefreshed>(
      (event, emit) async {
        await _onViewPostJobApplicationsRefreshed(event, emit);
      },
      transformer: bloc_concurrency.restartable(),
    );
  }

  Future<void> _onViewPostJobApplicationsLoaded(
      ViewPostJobApplicationsLoaded event,
      Emitter<ViewPostJobApplicationsState> emit) async {
    await _loadJobApplications(
      emit: emit,
      fullRefresh: false,
      jobPost: event.jobPost,
    );
  }

  Future<void> _onViewPostJobApplicationsRefreshed(
      ViewPostJobApplicationsRefreshed event,
      Emitter<ViewPostJobApplicationsState> emit) async {
    await _loadJobApplications(
      emit: emit,
      fullRefresh: true,
      jobPost: event.jobPost,
    );
  }

  Future<void> _loadJobApplications({
    required JobPost jobPost,
    required bool fullRefresh,
    required Emitter<ViewPostJobApplicationsState> emit,
  }) async {
    emit(const ViewPostJobApplicationsInProgress());

    final jobApplicationsResult =
        await _viewPostJobApplicationsRepository.getJobApplications(
      jobPost: jobPost,
      fullRefresh: fullRefresh,
    );

    jobApplicationsResult.fold(
      (errorWithCachedJobApplications) => emit(
        ViewPostJobApplicationsLoadFailure(
          errorWithCachedJobApplications.head,
          errorWithCachedJobApplications.tail,
        ),
      ),
      (jobApplications) =>
          emit(ViewPostJobApplicationsLoadSuccess(jobApplications)),
    );

  }
}
