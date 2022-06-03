import 'dart:ui' as ui;

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/features/resume_creator/models/resume_data.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_subdivisions_manager_bloc/resume_subdivisions_manager_bloc.dart';
import 'package:doors/features/resume_creator/presentation/widgets/basic_resume_creator_widgets/subdivision_text_field.dart';
import 'package:doors/features/resume_creator/presentation/widgets/sized_box_8_h.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResumeSectionSubdivisionWidget extends StatefulWidget {
  final int sectionSubdivisionIndex;
  final int resumeSectionIndex;
  final SectionSubdivision sectionSubdivision;

  const ResumeSectionSubdivisionWidget({
    Key? key,
    required this.sectionSubdivision,
    required this.sectionSubdivisionIndex,
    required this.resumeSectionIndex,
  }) : super(key: key);

  @override
  State<ResumeSectionSubdivisionWidget> createState() =>
      _ResumeSectionSubdivisionWidgetState();
}

class _ResumeSectionSubdivisionWidgetState
    extends State<ResumeSectionSubdivisionWidget> {
  /// get the screen hight without the "MediaQuery.of(context)" to avoid rebuilding
  /// the widget tree every time the keyboard opens and closes.
  final _screenHight =
      (ui.window.physicalSize / ui.window.devicePixelRatio).height;

  @override
  Widget build(BuildContext context) {
    final _subdivisionsManagerBloc =
        context.read<ResumeSubdivisionsManagerBloc>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4, top: 32),
          child: Draggable(
            data: widget.sectionSubdivision,
            onDragStarted: () {
              _subdivisionsManagerBloc.add(
                ResumeSubdivisionsManagerEvent.subdivisionDragStarted(
                  widget.sectionSubdivision,
                  widget.resumeSectionIndex,
                  widget.sectionSubdivisionIndex,
                ),
              );
            },
            onDragUpdate: (dragUpdateDetails) {
              _subdivisionsManagerBloc.add(
                ResumeSubdivisionsManagerEvent.subdivisionDragUpdated(
                  dragUpdateDetails.localPosition.dy / _screenHight,
                ),
              );
            },
            onDragEnd: (draggableDetails) {
              _subdivisionsManagerBloc.add(
                ResumeSubdivisionsManagerEvent.subdivisionDragEnded(
                  widget.sectionSubdivision,
                  widget.resumeSectionIndex,
                  widget.sectionSubdivisionIndex,
                  draggableDetails.wasAccepted,
                ),
              );
            },
            feedback: _DraggableFeedBack(
              sectionSubdivision: widget.sectionSubdivision,
            ),
            child: const Icon(Icons.menu_outlined),
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SubdivisionTextField(
                initValue: widget.sectionSubdivision.label,
                hint: context.loc.label,
                onChange: (label) {
                  _onChangeOrSaveLabel(label, _subdivisionsManagerBloc);
                },
                onSave: (label) {
                  _onChangeOrSaveLabel(label, _subdivisionsManagerBloc);
                },
              ),
              const SizedBox8H(),
              SubdivisionTextField(
                initValue: widget.sectionSubdivision.paragraph,
                hint: context.loc.paragraph,
                maxLines: 4,
                onChange: (paragraph) {
                  _onChangeOrSaveParagraph(paragraph, _subdivisionsManagerBloc);
                },
                onSave: (paragraph) {
                  _onChangeOrSaveParagraph(paragraph, _subdivisionsManagerBloc);
                },
              )
            ],
          ),
        ),
      ],
    );
  }

  void _onChangeOrSaveLabel(
    String? label,
    ResumeSubdivisionsManagerBloc subdivisionsManagerBloc,
  ) {
    subdivisionsManagerBloc.add(
      ResumeSubdivisionsManagerEvent.subdivisionLabelUpdated(
        label,
        widget.resumeSectionIndex,
        widget.sectionSubdivisionIndex,
      ),
    );
  }

  void _onChangeOrSaveParagraph(
    String? paragraph,
    ResumeSubdivisionsManagerBloc subdivisionsManagerBloc,
  ) {
    subdivisionsManagerBloc.add(
      ResumeSubdivisionsManagerEvent.subdivisionParagraphUpdated(
        paragraph,
        widget.resumeSectionIndex,
        widget.sectionSubdivisionIndex,
      ),
    );
  }
}

class _DraggableFeedBack extends StatelessWidget {
  final SectionSubdivision sectionSubdivision;
  const _DraggableFeedBack({
    Key? key,
    required this.sectionSubdivision,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: SizedBox(
        width: 300,
        child: Material(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: SubdivisionTextField(
                  initValue: sectionSubdivision.label,
                  hint: context.loc.label,
                  onSave: (_) {},
                  onChange: (_) {},
                ),
              ),
              const SizedBox8H(),
              Flexible(
                child: SubdivisionTextField(
                  initValue: sectionSubdivision.paragraph,
                  hint: context.loc.paragraph,
                  maxLines: 4,
                  onSave: (_) {},
                  onChange: (_) {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
