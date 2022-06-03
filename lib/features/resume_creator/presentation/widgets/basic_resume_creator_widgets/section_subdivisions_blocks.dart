import 'dart:collection';

import 'package:doors/features/resume_creator/models/resume_data.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_subdivisions_manager_bloc/resume_subdivisions_manager_bloc.dart';
import 'package:doors/features/resume_creator/presentation/widgets/basic_resume_creator_widgets/resume_section_subdivision_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionSubdivisionsBlocks extends StatelessWidget {
  final int resumeSectionIndex;
  final UnmodifiableListView<SectionSubdivision> sectionSubdivisions;
  const SectionSubdivisionsBlocks({
    Key? key,
    required this.resumeSectionIndex,
    required this.sectionSubdivisions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      key: UniqueKey(),
      children: [
        for (int index = 0; index < sectionSubdivisions.length; index++)
          Column(
            key: UniqueKey(),
            children: [
              _SubdivisionDragTarget(
                resumeSectionIndex: resumeSectionIndex,
                subdivisionIndex: index,
                isInsertAfter: false,
              ),
              ResumeSectionSubdivisionWidget(
                resumeSectionIndex: resumeSectionIndex,
                sectionSubdivisionIndex: index,
                sectionSubdivision: sectionSubdivisions[index],
              ),
              if (index != 0 || sectionSubdivisions.length == 1)
                _SubdivisionDragTarget(
                  subdivisionIndex: index,
                  resumeSectionIndex: resumeSectionIndex,
                  isInsertAfter: true,
                )
            ],
          )
      ],
    );
  }
}

class _SubdivisionDragTarget extends StatefulWidget {
  final bool isInsertAfter;
  final int resumeSectionIndex;
  final int subdivisionIndex;
  const _SubdivisionDragTarget({
    Key? key,
    required this.subdivisionIndex,
    required this.isInsertAfter,
    required this.resumeSectionIndex,
  }) : super(key: key);

  @override
  State<_SubdivisionDragTarget> createState() => _SubdivisionDragTargetState();
}

class _SubdivisionDragTargetState extends State<_SubdivisionDragTarget> {
  late final _resumeSubdivisionsManagerBloc =
      context.read<ResumeSubdivisionsManagerBloc>();

  int? _draggedFromSectionIndex;
  int? _draggedSubdivisionIndex;
  SectionSubdivision? _draggedSectionSubdivision;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return BlocConsumer<ResumeSubdivisionsManagerBloc,
        ResumeSubdivisionsManagerState>(
      listenWhen: (previous, current) {
        return current.maybeWhen(
          startDragging: (_, draggedFromSectionIndex, draggedSubdivisionIndex) {
            if (draggedFromSectionIndex == widget.resumeSectionIndex &&
                draggedSubdivisionIndex == widget.subdivisionIndex) {
              return false;
            }
            return true;
          },
          dragEnd: (_, __, ___, ____) => true,
          orElse: () => false,
        );
      },
      listener: (context, state) {
        state.whenOrNull(
          startDragging: (
            draggedSectionSubdivision,
            draggedFromSectionIndex,
            draggedSubdivisionIndex,
          ) {
            _draggedFromSectionIndex = draggedFromSectionIndex;
            _draggedSubdivisionIndex = draggedSubdivisionIndex;
            _draggedSectionSubdivision = draggedSectionSubdivision;
          },
        );
      },
      bloc: _resumeSubdivisionsManagerBloc,
      buildWhen: (previous, current) {
        return current.maybeWhen(
          startDragging: (_, draggedFromSectionIndex, draggedSubdivisionIndex) {
            if (draggedFromSectionIndex == widget.resumeSectionIndex &&
                draggedSubdivisionIndex == widget.subdivisionIndex) {
              return false;
            }
            return true;
          },
          dragEnd: (_, __, ___, ____) => true,
          orElse: () => false,
        );
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: DragTarget<SectionSubdivision>(
            builder: (context, candidateData, rejectedData) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                height: state.maybeWhen<double>(
                  startDragging: (_, __, ___) {
                    return 16;
                  },
                  orElse: () => 0,
                ),
                color: candidateData.isNotEmpty &&
                        candidateData.first is SectionSubdivision
                    ? _theme.colorScheme.primary
                    : _theme.colorScheme.primary.withOpacity(0.7),
              );
            },
            onAccept: (_) {
              if (_draggedFromSectionIndex != null &&
                  _draggedSubdivisionIndex != null &&
                  _draggedSectionSubdivision != null) {
                _resumeSubdivisionsManagerBloc.add(
                  ResumeSubdivisionsManagerEvent.subdivisionRemoved(
                    _draggedFromSectionIndex!,
                    _draggedSubdivisionIndex!,
                  ),
                );

                _resumeSubdivisionsManagerBloc.add(
                  ResumeSubdivisionsManagerEvent.subdivisionInserted(
                    _draggedSectionSubdivision!,
                    widget.resumeSectionIndex,
                    widget.subdivisionIndex + (widget.isInsertAfter ? 1 : 0),
                  ),
                );
              }
            },
          ),
        );
      },
    );
  }
}
