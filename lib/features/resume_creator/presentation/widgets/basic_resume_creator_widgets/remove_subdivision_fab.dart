import 'package:doors/features/resume_creator/models/resume_data.dart';
import 'package:doors/features/resume_creator/presentation/managers/resume_subdivisions_manager_bloc/resume_subdivisions_manager_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';

class RemoveSubdivisionFAB extends StatefulWidget {
  const RemoveSubdivisionFAB({Key? key}) : super(key: key);

  @override
  State<RemoveSubdivisionFAB> createState() => _RemoveSubdivisionFABState();
}

class _RemoveSubdivisionFABState extends State<RemoveSubdivisionFAB>
    with SingleTickerProviderStateMixin {
  late final AnimationController _fabAnimationController;
  late final Animation<double> _fabScaleAnimation;

  @override
  void initState() {
    _fabAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _fabScaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _fabAnimationController,
        curve: Curves.linear,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _fabAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return BlocConsumer<ResumeSubdivisionsManagerBloc,
        ResumeSubdivisionsManagerState>(
      listenWhen: (previous, current) {
        return current.maybeMap(
          startDragging: (_) => true,
          orElse: () => false,
        );
      },
      listener: (context, state) {
        state.mapOrNull(
          startDragging: (_) {
            _fabAnimationController.forward(from: 0.0);
          },
        );
      },
      buildWhen: (previous, current) {
        return current.maybeMap(
          startDragging: (_) => true,
          dragEnd: (_) => true,
          orElse: () => false,
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          startDragging:
              (draggedSectionSubdivision, sectionIndex, subdivisionIndex) {
            return DragTarget<SectionSubdivision>(
              onAccept: (data) {
                context.read<ResumeSubdivisionsManagerBloc>().add(
                      ResumeSubdivisionsManagerEvent.subdivisionRemoved(
                        sectionIndex,
                        subdivisionIndex,
                      ),
                    );
              },
              onMove: (_) {
                HapticFeedback.lightImpact();
              },
              builder: (context, candidateData, rejectedData) {
                return ScaleTransition(
                  scale: _fabScaleAnimation,
                  child: Material(
                    type: MaterialType.circle,
                    color: _theme.colorScheme.error,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding: EdgeInsets.all(
                        candidateData.firstOrNull is SectionSubdivision
                            ? 20
                            : 16,
                      ),
                      child: Icon(
                        Icons.delete_forever_rounded,
                        color: Colors.white,
                        size: candidateData.firstOrNull is SectionSubdivision
                            ? 32
                            : 30,
                      ),
                    ),
                  ),
                );
              },
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
