import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/custom_dropdown/custom_drop_down.dart';
import 'package:flutter/material.dart' hide DropdownButtonFormField;

class ServiceTypeDropdownButtonFormField extends StatefulWidget {
  final Function(ServiceType? serviceType) onSave;

  const ServiceTypeDropdownButtonFormField({
    Key? key,
    required this.onSave,
  }) : super(key: key);

  @override
  State<ServiceTypeDropdownButtonFormField> createState() =>
      _ServiceTypeDropdownButtonFormFieldState();
}

class _ServiceTypeDropdownButtonFormFieldState
    extends State<ServiceTypeDropdownButtonFormField> {
    var _serviceType = 'ALL';
  @override
  Widget build(BuildContext context) {
    final _onPrimaryColor = Theme.of(context).colorScheme.onPrimary;
    return CustomDropdownButtonFormField<String>(
      dropdownColor: _onPrimaryColor,
      decoration: InputDecoration(
        fillColor: _onPrimaryColor,
      ),
      iconEnabledColor: Colors.black,
      value: _serviceType,
      items: [
        DropdownMenuItem<String>(
          child: Text(context.loc.all),
          value: 'ALL',
        ),
        DropdownMenuItem<String>(
          child: Text(context.loc.need),
          value: ServiceType.need.name,
        ),
        DropdownMenuItem<String>(
          child: Text(context.loc.offer),
          value: ServiceType.offer.name,
        )
      ],
      onSaved: (serviceType) {
        if (serviceType == 'ALL') {
          widget.onSave(null);
          return;
        }
        widget.onSave(
            ServiceType.values.firstWhere((element) => element.name == serviceType));
      },
      onChanged: (serviceType) {
        setState(() {
          _serviceType = serviceType ?? 'ALL';
        });
      },
    );
  }
}
