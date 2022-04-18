import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/post/model/post_report.dart';
import 'package:doors/core/features/post/repository/post_report_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  final PostReportRepository _postReportRepository;
  ReportBloc(this._postReportRepository) : super(const ReportInitial()) {
    on<ReportEvent>((event, emit) async {
    await  event.map(
          postReported: (event) async => await _onPostReported(event, emit));
    });
  }

  Future<void> _onPostReported(
      ReportPostReported event, Emitter<ReportState> emit) async {
    emit(const ReportInProgress());

    final postReportResult =
        await _postReportRepository.reportPost(event.postReport);

    postReportResult.fold((error) => emit(ReportFailure(error)),
        (r) => emit(const ReportSuccuss()));
  }
}
