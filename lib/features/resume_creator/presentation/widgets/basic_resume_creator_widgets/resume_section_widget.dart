import 'package:doors/features/resume_creator/models/resume_data.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_sections_manager_bloc/resume_sections_manager_bloc.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_subdivisions_manager_bloc/resume_subdivisions_manager_bloc.dart';
import 'package:doors/features/resume_creator/presentation/widgets/basic_resume_creator_widgets/section_controller_buttons.dart';
import 'package:doors/features/resume_creator/presentation/widgets/basic_resume_creator_widgets/section_name_text_field.dart';
import 'package:doors/features/resume_creator/presentation/widgets/basic_resume_creator_widgets/section_subdivisions_blocks.dart';
import 'package:doors/features/resume_creator/presentation/widgets/sized_box_8_h.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ResumeSectionWidget extends StatelessWidget {
  final int resumeSectionIndex;
  final ResumeSection resumeSection;
  final int sectionsCount;
  const ResumeSectionWidget({
    Key? key,
    required this.resumeSection,
    required this.resumeSectionIndex,
    required this.sectionsCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _resumeSectionsManagerBloc =
        context.read<ResumeSectionsManagerBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionControllerButtons(
            sectionIndex: resumeSectionIndex,
            sectionsCount: sectionsCount,
          ),
          SectionNameTxtField(
            initValue: resumeSection.label,
            onChange: (sectionName) => _onSaveOrChangeSectionName(
              sectionName,
              _resumeSectionsManagerBloc,
            ),
            onSave: (sectionName) => _onSaveOrChangeSectionName(
              sectionName,
              _resumeSectionsManagerBloc,
            ),
          ),
          const SizedBox8H(),
          BlocBuilder<ResumeSubdivisionsManagerBloc,
              ResumeSubdivisionsManagerState>(
            key: UniqueKey(),
            buildWhen: (previous, current) {
              return current.maybeWhen<bool>(
                changeSuccess: (_, sectionIndex) =>
                    sectionIndex == resumeSectionIndex,
                initial: () => true,
                orElse: () => false,
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                changeSuccess: (newSubdivisions, sectionIndex) {
                  return SectionSubdivisionsBlocks(
                    key: UniqueKey(),
                    resumeSectionIndex: sectionIndex,
                    sectionSubdivisions: newSubdivisions,
                  );
                },
                orElse: () {
                  return SectionSubdivisionsBlocks(
                    key: UniqueKey(),
                    resumeSectionIndex: resumeSectionIndex,
                    sectionSubdivisions: UnmodifiableListView(
                      resumeSection.sectionSubdivisions,
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  void _onSaveOrChangeSectionName(String? sectionName,
      ResumeSectionsManagerBloc resumeSectionsManagerBloc) {
    resumeSectionsManagerBloc.add(
      ResumeSectionsManagerEvent.sectionLabelUpdated(
        sectionName,
        resumeSectionIndex,
      ),
    );
  }
}
