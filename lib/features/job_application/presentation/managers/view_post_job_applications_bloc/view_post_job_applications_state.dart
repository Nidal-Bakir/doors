part of 'view_post_job_applications_bloc.dart';

@freezed
class ViewPostJobApplicationsState with _$ViewPostJobApplicationsState {
  const factory ViewPostJobApplicationsState.inProgress() =
      ViewPostJobApplicationsInProgress;

  const factory ViewPostJobApplicationsState.loadSuccess(
          UnmodifiableListView<JobApplication> jobApplications) =
      ViewPostJobApplicationsLoadSuccess;

  const factory ViewPostJobApplicationsState.loadFailure(
    ExceptionBase error,
    UnmodifiableListView<JobApplication> cachedUserPosts,
  ) = ViewPostJobApplicationsLoadFailure;
}
