import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart';

class JobTypesChipsMultiSelectionWithHeadLine extends StatefulWidget {
  final Set<JobType>? initJobTypes;
  final String headLineLabel;
  final Color? selectedChipColor;
  final VoidCallbackWithParam<Set<JobType>> onJobTypeChange;
  const JobTypesChipsMultiSelectionWithHeadLine({
    Key? key,
    required this.onJobTypeChange,
    this.initJobTypes,
    this.selectedChipColor,
    required this.headLineLabel,
  }) : super(key: key);

  @override
  State<JobTypesChipsMultiSelectionWithHeadLine> createState() =>
      _JobTypesChipsMultiSelectionWithHeadLineState();
}

class _JobTypesChipsMultiSelectionWithHeadLineState
    extends State<JobTypesChipsMultiSelectionWithHeadLine> {
  /// selection state in the order: [remotely, inSite, hybrid]
  late final _selectedJobTypes =
      _mapJobTypesToBoolSelectionState(widget.initJobTypes);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LineWithTextOnRow(text: widget.headLineLabel),
        Wrap(
          spacing: 8,
          children: [
            ChoiceChip(
              selectedColor: widget.selectedChipColor,
              selected: _selectedJobTypes[0],
              label: Text(context.loc.remotely),
              onSelected: (remotely) {
                _onJobTypeSelectionChange(remotely, 0);
              },
            ),
            ChoiceChip(
              selectedColor: widget.selectedChipColor,
              selected: _selectedJobTypes[1],
              label: Text(context.loc.inSite),
              onSelected: (inSite) {
                _onJobTypeSelectionChange(inSite, 1);
              },
            ),
            ChoiceChip(
              selectedColor: widget.selectedChipColor,
              selected: _selectedJobTypes[2],
              label: Text(context.loc.hybrid),
              onSelected: (hybrid) {
                _onJobTypeSelectionChange(hybrid, 2);
              },
            ),
          ],
        ),
      ],
    );
  }

  List<bool> _mapJobTypesToBoolSelectionState(Set<JobType>? initJobTypes) {
    final List<bool> _selectionState = [true, true, true];
    if (initJobTypes == null) {
      return _selectionState;
    }
    for (int i = 0; i < 3; i++) {
      if (initJobTypes.contains(JobType.values[i])) {
        _selectionState[i] = true;
      } else {
        _selectionState[i] = false;
      }
    }
    return _selectionState;
  }

  Set<JobType> _mapBoolSelectionStateToJobTypes() {
    Set<JobType> _jobTypes = {};
    for (int i = 0; i < 3; i++) {
      if (_selectedJobTypes[i]) {
        _jobTypes.add(JobType.values[i]);
      }
    }
    return _jobTypes;
  }

  void _onJobTypeSelectionChange(bool hybrid, int index) {
    if (hybrid) {
      setState(() {
        _selectedJobTypes[index] = hybrid;
      });
    } else if (_isAtLeastOneJobTypeSelected(index)) {
      setState(() {
        _selectedJobTypes[index] = hybrid;
      });
    }
    widget.onJobTypeChange(_mapBoolSelectionStateToJobTypes());
  }

  bool _isAtLeastOneJobTypeSelected(int exceptIndex) {
    final _selectedJobTypesTest = _selectedJobTypes.toList();
    _selectedJobTypesTest.removeAt(exceptIndex);
    return _selectedJobTypesTest.fold(false, (prev, cur) => prev || cur);
  }
}
