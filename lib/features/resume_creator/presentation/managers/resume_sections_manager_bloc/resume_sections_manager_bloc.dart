import 'package:bloc/bloc.dart';
import 'package:doors/features/resume_creator/models/resume_data.dart';
import 'package:doors/features/resume_creator/repository/resume_data_manager_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

part 'resume_sections_manager_event.dart';
part 'resume_sections_manager_state.dart';

part 'resume_sections_manager_bloc.freezed.dart';

class ResumeSectionsManagerBloc
    extends Bloc<ResumeSectionsManagerEvent, ResumeSectionsManagerState> {
  final ResumeDataManagerRepository _resumeDataManagerRepository;
  ResumeSectionsManagerBloc(this._resumeDataManagerRepository)
      : super(const _Initial()) {
    on<_SectionAdded>((event, emit) => _onSectionAdded(event, emit));

    on<_SectionRemoved>((event, emit) => _onSectionRemoved(event, emit));

    on<_SectionMovedUp>((event, emit) => _onSectionMovedUp(event, emit));

    on<_SectionMovedDown>((event, emit) => _onSectionMovedDown(event, emit));

    on<_SectionLabelUpdated>(
      (event, emit) => _onSectionLabelUpdated(event, emit),
      transformer: _debounceEvents(),
    );
  }
  @override
  Future<void> close() {
    _resumeDataManagerRepository.clearAllResumeSections();
    return super.close();
  }

  void _onSectionAdded(
      _SectionAdded event, Emitter<ResumeSectionsManagerState> emit) {
    _resumeDataManagerRepository.addSection();

    emit(
      ResumeSectionsManagerState.changeSuccess(
        _resumeDataManagerRepository.getAllResumeSections(),
      ),
    );
  }

  void _onSectionRemoved(
      _SectionRemoved event, Emitter<ResumeSectionsManagerState> emit) {
    _resumeDataManagerRepository.removeSection(event.sectionIndex);

    emit(
      ResumeSectionsManagerState.changeSuccess(
        _resumeDataManagerRepository.getAllResumeSections(),
      ),
    );
  }

  void _onSectionMovedUp(
      _SectionMovedUp event, Emitter<ResumeSectionsManagerState> emit) {
    _resumeDataManagerRepository.moveSectionUp(event.sectionIndex);

    emit(
      ResumeSectionsManagerState.changeSuccess(
        _resumeDataManagerRepository.getAllResumeSections(),
      ),
    );
  }

  void _onSectionMovedDown(
      _SectionMovedDown event, Emitter<ResumeSectionsManagerState> emit) {
    _resumeDataManagerRepository.moveSectionDown(event.sectionIndex);

    emit(
      ResumeSectionsManagerState.changeSuccess(
        _resumeDataManagerRepository.getAllResumeSections(),
      ),
    );
  }

  void _onSectionLabelUpdated(
      _SectionLabelUpdated event, Emitter<ResumeSectionsManagerState> emit) {
    _resumeDataManagerRepository.updateSectionLabel(
      event.newLabel,
      event.sectionIndex,
    );
  }
  EventTransformer<Event> _debounceEvents<Event>() {
  return (events, mapper) => events
      .debounce(
        const Duration(milliseconds: 500),
      )
      .switchMap(
        mapper,
      );
}

}

