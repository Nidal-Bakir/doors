import 'package:bloc/bloc.dart';
import 'package:doors/features/resume_creator/models/resume_data.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_sections_manager_bloc/resume_sections_manager_bloc.dart';
import 'package:doors/features/resume_creator/repository/resume_data_manager_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rxdart/rxdart.dart';

part 'resume_subdivisions_manager_event.dart';
part 'resume_subdivisions_manager_state.dart';

part 'resume_subdivisions_manager_bloc.freezed.dart';

class ResumeSubdivisionsManagerBloc extends Bloc<ResumeSubdivisionsManagerEvent,
    ResumeSubdivisionsManagerState> {
  final ResumeSectionsManagerBloc _resumeSectionsManagerBloc;
  final ResumeDataManagerRepository _resumeDataManagerRepository;
  ResumeSubdivisionsManagerBloc(
    this._resumeDataManagerRepository,
    this._resumeSectionsManagerBloc,
  ) : super(const _Initial()) {
    on<_SubdivisionInserted>(
      (event, emit) => _onSubdivisionInserted(event, emit),
    );

    on<_SubdivisionAdded>(
      (event, emit) => _onSubdivisionAdded(event, emit),
    );

    on<_SubdivisionRemoved>(
      (event, emit) => _onSubdivisionRemoved(event, emit),
    );

    on<_SubdivisionDragStarted>(
      (event, emit) => _onSubdivisionDragStarted(event, emit),
    );

    on<_SubdivisionDragUpdated>(
        (event, emit) => _onSubdivisionDragUpdated(event, emit),
        transformer: _throttleEvents());

    on<_SubdivisionDragEnded>(
      (event, emit) => _onSubdivisionDragEnded(event, emit),
    );

    on<_SubdivisionLabelUpdated>(
      (event, emit) => _onSubdivisionLabelUpdated(event, emit),
      transformer: _debounceEvents(),
    );

    on<_SubdivisionParagraphUpdated>(
      (event, emit) => _onSubdivisionParagraphUpdated(event, emit),
      transformer: _debounceEvents(),
    );
    on<_ResumeSectionsChanged>(
      (event, emit) => _onResumeSectionsChanged(event, emit),
    );

    _resumeSectionsManagerBloc.stream.listen((sectionsManagerState) {
      sectionsManagerState.whenOrNull(changeSuccess: (_) {
        add(const ResumeSubdivisionsManagerEvent.resumeSectionsChanged());
      });
    });
  }

  void _onSubdivisionInserted(_SubdivisionInserted event,
      Emitter<ResumeSubdivisionsManagerState> emit) {
    _resumeDataManagerRepository.insertSubdivision(
      event.sectionSubdivision,
      event.sectionIndex,
      event.subdivisionInsertionIndex,
    );

    emit(
      ResumeSubdivisionsManagerState.changeSuccess(
        _resumeDataManagerRepository.getSectionSubdivisions(event.sectionIndex),
        event.sectionIndex,
      ),
    );
  }

  void _onSubdivisionAdded(
      _SubdivisionAdded event, Emitter<ResumeSubdivisionsManagerState> emit) {
    _resumeDataManagerRepository.addSubdivision(
      event.sectionIndex,
    );

    emit(
      ResumeSubdivisionsManagerState.changeSuccess(
        _resumeDataManagerRepository.getSectionSubdivisions(event.sectionIndex),
        event.sectionIndex,
      ),
    );
  }

  void _onSubdivisionRemoved(
      _SubdivisionRemoved event, Emitter<ResumeSubdivisionsManagerState> emit) {
    _resumeDataManagerRepository.removeSubdivision(
      event.sectionIndex,
      event.subdivisionIndex,
    );
    emit(
      ResumeSubdivisionsManagerState.changeSuccess(
        _resumeDataManagerRepository.getSectionSubdivisions(event.sectionIndex),
        event.sectionIndex,
      ),
    );
  }

  void _onSubdivisionDragStarted(_SubdivisionDragStarted event,
      Emitter<ResumeSubdivisionsManagerState> emit) {
    emit(
      ResumeSubdivisionsManagerState.startDragging(
        event.draggedSectionSubdivision,
        event.sectionIndex,
        event.subdivisionIndex,
      ),
    );
  }

  void _onSubdivisionDragUpdated(_SubdivisionDragUpdated event,
      Emitter<ResumeSubdivisionsManagerState> emit) {
    emit(
      ResumeSubdivisionsManagerState.dragUpdate(
        event.normalizedDy,
      ),
    );
  }

  void _onSubdivisionDragEnded(_SubdivisionDragEnded event,
      Emitter<ResumeSubdivisionsManagerState> emit) {
    emit(
      ResumeSubdivisionsManagerState.dragEnd(
        event.draggedSectionSubdivision,
        event.sectionIndex,
        event.subdivisionIndex,
        event.wasAccepted,
      ),
    );
  }

  void _onSubdivisionLabelUpdated(_SubdivisionLabelUpdated event,
      Emitter<ResumeSubdivisionsManagerState> emit) {
    _resumeDataManagerRepository.updateSubdivisionLabel(
      event.newLabel,
      event.sectionIndex,
      event.subdivisionIndex,
    );
  }

  void _onSubdivisionParagraphUpdated(_SubdivisionParagraphUpdated event,
      Emitter<ResumeSubdivisionsManagerState> emit) {
    _resumeDataManagerRepository.updateSubdivisionParagraph(
      event.newParagraph,
      event.sectionIndex,
      event.subdivisionIndex,
    );
  }

  EventTransformer<Event> _debounceEvents<Event>() {
    return (events, mapper) => events
        .debounceTime(
          const Duration(milliseconds: 500),
        )
        .switchMap(
          mapper,
        );
  }

  void _onResumeSectionsChanged(_ResumeSectionsChanged event,
      Emitter<ResumeSubdivisionsManagerState> emit) {
    emit(const ResumeSubdivisionsManagerState.initial());
  }

  EventTransformer<Event> _throttleEvents<Event>() {
    return (events, mapper) => events
        .throttleTime(
          const Duration(milliseconds: 105),
        )
        .flatMap(mapper, maxConcurrent: 1);
  }
}
