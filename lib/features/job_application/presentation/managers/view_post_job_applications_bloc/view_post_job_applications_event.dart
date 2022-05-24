part of 'view_post_job_applications_bloc.dart';

@freezed
class ViewPostJobApplicationsEvent with _$ViewPostJobApplicationsEvent {
   const factory ViewPostJobApplicationsEvent.loaded( JobPost jobPost) = ViewPostJobApplicationsLoaded;
  const factory ViewPostJobApplicationsEvent.refreshed( JobPost jobPost) = ViewPostJobApplicationsRefreshed;
}