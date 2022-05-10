import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberTextField extends StatefulWidget {
  final void Function(PhoneNumber phoneNumber) onSave;
  final String? initPhoneNumber;

  const PhoneNumberTextField({
    Key? key,
    required this.onSave,
    this.initPhoneNumber,
  }) : super(key: key);

  @override
  State<PhoneNumberTextField> createState() => _PhoneNumberTextFieldState();
}

class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
  PhoneNumber? _initialPhoneNumber;

  var _isValidPhoneNamer = false;
  @override
  void initState() {
    if (widget.initPhoneNumber == null && widget.initPhoneNumber!.isNotEmpty) {
      _initWithDefaultISOCodeFromDevice();
    } else {
      PhoneNumber.getRegionInfoFromPhoneNumber(widget.initPhoneNumber!)
          .then((phoneNumber) {
        setState(() {
          _initialPhoneNumber = PhoneNumber(
            phoneNumber: widget.initPhoneNumber,
            isoCode: phoneNumber.isoCode,
          );
        });
      }).onError((error, stackTrace) async {
        setState(() {
          _initWithDefaultISOCodeFromDevice();
        });
      });
    }

    super.initState();
  }

  void _initWithDefaultISOCodeFromDevice() {
    final _initialCountryISOCode = extractISOCountryCodeFromPlatformService();
    _initialPhoneNumber = PhoneNumber(isoCode: _initialCountryISOCode);
  }

  @override
  Widget build(BuildContext context) {

    return InternationalPhoneNumberInput(
      ignoreBlank: true,
      initialValue: _initialPhoneNumber,
      textStyle: Theme.of(context).textTheme.subtitle1,
      selectorTextStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
            fontWeight: FontWeight.w800,
          ),
      searchBoxDecoration: InputDecoration(
        border: InputBorder.none,
        label: null,
        hintText: context.loc.search_by_country_name,
      ),
      hintText: context.loc.optional_phone_number,
      spaceBetweenSelectorAndTextField: 0.0,
      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.DIALOG,
        leadingPadding: 8,
        setSelectorButtonAsPrefixIcon: true,
      ),
      errorMessage: context.loc.invalid_phone_number,
      inputBorder: const OutlineInputBorder(
        gapPadding: 0.0,
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      autoValidateMode: AutovalidateMode.onUserInteraction,
      onInputValidated: (isValid) {
        _isValidPhoneNamer = isValid;
      },
      onSaved: (PhoneNumber phoneNumber) {
        if (_isValidPhoneNamer &&
            (phoneNumber.phoneNumber?.isNotEmpty ?? false)) {
          widget.onSave(phoneNumber);
        }
      },
      onInputChanged: (_) {

      },
    );
  }
}
