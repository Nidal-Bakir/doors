import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_sections_manager_bloc/resume_sections_manager_bloc.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_subdivisions_manager_bloc/resume_subdivisions_manager_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionControllerButtons extends StatelessWidget {
  final int sectionIndex;
  final int sectionsCount;
  const SectionControllerButtons({
    Key? key,
    required this.sectionIndex,
    required this.sectionsCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _resumeSectionsManagerBloc =
        context.read<ResumeSectionsManagerBloc>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 30,
            decoration: BoxDecoration(
              color: _theme.colorScheme.primary,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(5),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Material(
                  color: _theme.colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                  ),
                  child: IconButton(
                    tooltip: context.loc.move_up,
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    icon: const Icon(Icons.arrow_drop_up_rounded, size: 30),
                    onPressed: sectionIndex == 0
                        ? null
                        : () {
                            _resumeSectionsManagerBloc.add(
                              ResumeSectionsManagerEvent.sectionMovedUp(
                                sectionIndex,
                              ),
                            );
                          },
                  ),
                ),
                Material(
                  color: _theme.colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                  ),
                  child: IconButton(
                    tooltip: context.loc.move_down,
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    icon: const Icon(Icons.arrow_drop_down_rounded, size: 30),
                    onPressed: sectionsCount - 1 == sectionIndex
                        ? null
                        : () {
                            _resumeSectionsManagerBloc.add(
                              ResumeSectionsManagerEvent.sectionMovedDown(
                                sectionIndex,
                              ),
                            );
                          },
                  ),
                ),
                Material(
                  color: _theme.colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                  ),
                  child: IconButton(
                    tooltip: context.loc.add_subdivision,
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    icon: const Icon(Icons.add_rounded),
                    onPressed: () {
                      context
                          .read<ResumeSubdivisionsManagerBloc>()
                          .add(ResumeSubdivisionsManagerEvent.subdivisionAdded(
                            sectionIndex,
                          ));
                    },
                  ),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: Divider(color: _theme.colorScheme.secondary),
                ),
                Material(
                  color: _theme.colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                  ),
                  child: IconButton(
                    tooltip: context.loc.remove_this_section,
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    icon: const Icon(Icons.delete_forever_rounded),
                    onPressed: () {
                      _resumeSectionsManagerBloc.add(
                        ResumeSectionsManagerEvent.sectionRemoved(
                          sectionIndex,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Divider(
            thickness: 2,
            height: 0,
            color: _theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
