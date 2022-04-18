part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState.initial() = ReportInitial;
  const factory ReportState.inProgress() = ReportInProgress;
  const factory ReportState.succuss() = ReportSuccuss;
  const factory ReportState.failure(ServerException error) = ReportFailure;

}
