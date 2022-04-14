import 'package:flutter/material.dart';

class KeywordsRow extends StatelessWidget {
  final List<String> keywords;
  final int? limit;

  const KeywordsRow({
    Key? key,
    required this.keywords,
    this.limit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: keywords
          .map(
            (e) => Material(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              type: MaterialType.card,
              color: Colors.white,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  e.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 5,
                    ),
                  ),
                ),
              ),
            ),
          )
          .take(limit ?? keywords.length)
          .toList(),
    );
  }
}
