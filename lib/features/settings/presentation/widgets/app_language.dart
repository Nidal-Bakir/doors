import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/custom_dropdown/custom_drop_down.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/features/settings/presentation/managers/bloc/app_locale_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLanguage extends StatelessWidget {
  const AppLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LineWithTextOnRow(
          text: context.loc.app_language,
        ),
        CustomDropdownButtonFormField<Locale>(
          value: Localizations.localeOf(context),
          items: const [
            DropdownMenuItem(
              value: Locale('en'),
              child: Text('🇺🇸 English'),
            ),
            DropdownMenuItem(
              value: Locale('de'),
              child: Text('🇩🇪 Deutsch'),
            ),
            DropdownMenuItem(
              value: Locale('ar'),
              child: Text('🇸🇦 العربية'),
            ),
          ],
          onChanged: (appLocale) {
            context.read<AppLocaleBloc>().add(
                  AppLocaleChanged(appLocale!),
                );
          },
        ),
      ],
    );
  }
}
