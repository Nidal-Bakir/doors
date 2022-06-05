import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_sections_manager_bloc/resume_sections_manager_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewSectionFAB extends StatelessWidget {
  const AddNewSectionFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Align(
      alignment: AlignmentDirectional.center,
      child: FloatingActionButton(
        tooltip: context.loc.add_new_section,
        onPressed: () {
          context.read<ResumeSectionsManagerBloc>().add(
                const ResumeSectionsManagerEvent.sectionAdded(),
              );
        },
        backgroundColor: _theme.colorScheme.primary,
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}