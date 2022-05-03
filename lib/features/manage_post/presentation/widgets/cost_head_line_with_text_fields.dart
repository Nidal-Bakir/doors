import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/country_currency.dart';
import 'package:doors/core/widgets/currency_dropdown.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/widgets/sized_box_16_h.dart';
import 'package:flutter/material.dart';

class CostHeadLineWithTextFields extends StatefulWidget {
  final double? initFromCost;
  final double? initUpToCost;
  final String? initCurrency;
  final Function({
    double? fromCost,
    double? upToCost,
    String? currency,
  }) onCostSave;

  const CostHeadLineWithTextFields(
      {Key? key,
      required this.initFromCost,
      required this.initUpToCost,
      required this.initCurrency,
      required this.onCostSave})
      : super(key: key);

  @override
  State<CostHeadLineWithTextFields> createState() =>
      _CostHeadLineWithTextFieldsState();
}

class _CostHeadLineWithTextFieldsState
    extends State<CostHeadLineWithTextFields> {
  late final TextEditingController _fromCostEditingController =
      TextEditingController();
  late final TextEditingController _upToCostEditingController =
      TextEditingController();

  late bool _iDonNotKnow =
      widget.initFromCost == null && widget.initUpToCost == null;
  late double? _fromCost = widget.initFromCost;
  late double? _upToCost = widget.initUpToCost;
  late String? _currency = widget.initCurrency;

  @override
  void initState() {
    _fromCostEditingController.text =
        widget.initFromCost == null ? '' : widget.initFromCost.toString();
    _upToCostEditingController.text =
        widget.initUpToCost == null ? '' : widget.initUpToCost.toString();
    super.initState();
  }

  @override
  void dispose() {
    _fromCostEditingController.dispose();
    _upToCostEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LineWithTextOnRow(text: context.loc.cost),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              flex: 1,
              child: TextFormField(
                onChanged: (fromCost) {
                  _fromCost = double.tryParse(fromCost);
                },
                readOnly: _iDonNotKnow,
                controller: _fromCostEditingController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: context.loc.from,
                  errorMaxLines: 2,
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                enableSuggestions: true,
                keyboardType: TextInputType.number,
                validator: (fromCost) => isValidFromCost(fromCost, context),
                onSaved: (fromCost) {
                  _fromCost = double.tryParse(fromCost ?? '');
                  widget.onCostSave(
                    currency: _currency,
                    fromCost: _fromCost,
                    upToCost: _upToCost,
                  );
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(
              flex: 1,
              child: TextFormField(
                onChanged: (upToCost) {
                  _upToCost = double.tryParse(upToCost);
                },
                readOnly: _iDonNotKnow,
                controller: _upToCostEditingController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: context.loc.up_to,
                  errorMaxLines: 2,
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                enableSuggestions: true,
                keyboardType: TextInputType.number,
                validator: (upToCost) => isValidUpCost(upToCost, context),
                onSaved: (upToCost) {
                  _upToCost = double.tryParse(upToCost ?? '');
                  widget.onCostSave(
                    currency: _currency,
                    fromCost: _fromCost,
                    upToCost: _upToCost,
                  );
                },
              ),
            ),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
        const SizedBox16H(),
        IgnorePointer(
            ignoring: _iDonNotKnow,
            child: CurrencyDropdown(
              initCurrency: _currency,
              onSaved: (countryCurrency) {
                if (_iDonNotKnow) {
                  _currency = null;
                } else {
                  _currency = CountryCurrency.toStringFormat(countryCurrency);
                }
                widget.onCostSave(
                  currency: _currency,
                  fromCost: _fromCost,
                  upToCost: _upToCost,
                );
              },
            )),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Text(context.loc.i_do_not_know,
                  style: Theme.of(context).textTheme.subtitle2),
              Checkbox(
                value: _iDonNotKnow,
                onChanged: (iDonNotKnow) {
                  setState(
                    () {
                      _iDonNotKnow = iDonNotKnow ?? false;
                      if (_iDonNotKnow) {
                        _fromCost = null;
                        _upToCost = null;
                        _currency = null;
                        _fromCostEditingController.clear();
                        _upToCostEditingController.clear();
                      }
                    },
                  );
                },
              )
            ],
          ),
        ),
      ],
    );
  }

  String? isValidFromCost(String? fromCost, BuildContext context) {
    if (!_iDonNotKnow && _fromCost == null && _upToCost == null) {
      return context.loc.at_lest_one_cost_range;
    }
    return null;
  }

  String? isValidUpCost(String? upToCost, BuildContext context) {
    if (!_iDonNotKnow && _fromCost == null && _upToCost == null) {
      return context.loc.at_lest_one_cost_range;
    }
    return null;
  }
}
