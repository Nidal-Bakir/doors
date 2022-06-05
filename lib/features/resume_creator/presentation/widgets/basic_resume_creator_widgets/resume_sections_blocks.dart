import 'package:doors/features/resume_creator/presentation/managers/resume_sections_manager_bloc/resume_sections_manager_bloc.dart';
import 'package:doors/features/resume_creator/presentation/widgets/basic_resume_creator_widgets/resume_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResumeSectionsBlocks extends StatelessWidget {
  const ResumeSectionsBlocks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResumeSectionsManagerBloc, ResumeSectionsManagerState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          changeSuccess: (resumeSections) {
            return Column(
              children: [
                for (var i = 0; i < resumeSections.length; i++)
                  ResumeSectionWidget(
                    resumeSectionIndex: i,
                    resumeSection: resumeSections[i],
                    sectionsCount: resumeSections.length,
                    key: UniqueKey(),
                  ),
              ],
            );
          },
        );
      },
    );
  }
}
