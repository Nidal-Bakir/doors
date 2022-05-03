import 'package:doors/core/utils/country_currency.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/custom_dropdown/custom_drop_down.dart';
import 'package:flutter/material.dart';

class CurrencyDropdown extends StatefulWidget {
  final void Function(CountryCurrency? countryCurrency) onSaved;
  final String? initCurrency;
  final Color? fillColor;
  const CurrencyDropdown({
    Key? key,
    required this.onSaved,
    required this.initCurrency,
    this.fillColor,
  }) : super(key: key);

  @override
  State<CurrencyDropdown> createState() => _CurrencyDropdownState();
}

class _CurrencyDropdownState extends State<CurrencyDropdown> {
  late String? _currency = widget.initCurrency;
  @override
  Widget build(BuildContext context) {
    return CustomDropdownButtonFormField<CountryCurrency>(
      dropdownColor: widget.fillColor,
      decoration: InputDecoration(
        fillColor: widget.fillColor,
      ),
      onSaved: widget.onSaved,
      value: _currency != null && _currency!.isNotEmpty
          ? CountryCurrency.findByCountryCode(
              CountryCurrency.extractCurrencyCodeFromStringFormat(
                _currency!,
              ),
            )
          : CountryCurrency.findByCountryCode(
              currencyCode(
                context,
              ),
            ),
      items: currencyCodes.map<DropdownMenuItem<CountryCurrency>>(
        (countryCurrency) {
          return DropdownMenuItem<CountryCurrency>(
            value: countryCurrency,
            child: Text(
              countryCurrency.code + ' ' + countryCurrency.symbolNative,
              softWrap: true,
              style: const TextStyle(
                fontFamily: 'Roboto',
              ),
            ),
          );
        },
      ).toList(),
      onChanged: (countryCurrency) {
        setState(
          () {
            _currency = CountryCurrency.toStringFormat(countryCurrency);
          },
        );
      },
    );
  }
}
