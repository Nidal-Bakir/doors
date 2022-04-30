import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart';

class KeywordsHeadLineWithTextField extends StatelessWidget {
  final Set<String> initKeywords;
  final void Function(Set<String> keywords) onKeywordsSave;
  const KeywordsHeadLineWithTextField({
    Key? key,
    required this.onKeywordsSave,
    required this.initKeywords,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LineWithTextOnRow(text: context.loc.keywords),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 4),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            initialValue: initKeywords.join(','),
            textInputAction: TextInputAction.newline,
            keyboardType: TextInputType.multiline,
            enableSuggestions: true,
            decoration: InputDecoration(
              hintText: context.loc.split_the_keyword_using_comma,
            ),
            maxLines: 2,
            validator: (keywords) => _keywordValidator(keywords, context),
            onSaved: (keywords) {
              onKeywordsSave(_extractListOfKeywords(keywords));
            },
          ),
        ),
      ],
    );
  }

  String? _keywordValidator(String? keywords, BuildContext context) {
    if (keywords != null && keywords.isNotEmpty) {
      final listOfKeywords = _extractListOfKeywords(keywords);
      for (var keyword in listOfKeywords) {
        if (keyword.contains(RegExp(
                r'[$&%!?\*\.#@_\-\/\\\^()=+;\{\}\[\]:"0-9©s®™✓°π√•|`~×÷¶∆¥€¢£<>]')) ||
            keyword.contains(RegExp(r"['\s]")) ||
            keyword.length < 2) {
          return context.loc.not_valid_keywords;
        } else {
          continue;
        }
      }
    }
    return null;
  }

  Set<String> _extractListOfKeywords(String? keywords) {
    // some arabic users may use the ar comma (،) so we split using the
    // two commas and the list with more elements is the used comma.
    final splitUsingEnglishComma = keywords?.split(',') ?? [];
    final splitUsingArabicComma = keywords?.split('،') ?? [];
    if (splitUsingEnglishComma.length > splitUsingArabicComma.length) {
      return splitUsingEnglishComma.map((e) => e.trim()).toSet();
    } else {
      return splitUsingArabicComma.map((e) => e.trim()).toSet();
    }
  }
}
