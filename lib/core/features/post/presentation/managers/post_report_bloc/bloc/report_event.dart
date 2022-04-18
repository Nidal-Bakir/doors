part of 'report_bloc.dart';

@freezed
class ReportEvent with _$ReportEvent {
  const factory ReportEvent.postReported(PostReport postReport) = ReportPostReported;
}