import 'package:auto_size_text/auto_size_text.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:doors/core/extensions/parse_geo_point/geo_point_calc.dart';

class PostLocation extends StatelessWidget {
  final String? humanReadableLocation;
  final ParseGeoPoint postLocation;
  final int maxLines;
  final MainAxisAlignment mainAxisAlignment;
  final TextAlign textAlign;
  final bool showDistance;
  const PostLocation({
    Key? key,
    required this.humanReadableLocation,
    required this.postLocation,
    this.mainAxisAlignment = MainAxisAlignment.end,
    this.textAlign = TextAlign.end,
    this.showDistance = false, this.maxLines=1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            if (textAlign == TextAlign.start)
              const Icon(Icons.location_on_outlined),
            Expanded(
              child: AutoSizeText(
                humanReadableLocation ?? context.loc.unknown_location,
                style: Theme.of(context).textTheme.bodyText2,
                maxLines: maxLines,
                overflow: TextOverflow.ellipsis,
                textAlign: textAlign,
              ),
            ),
            if (textAlign == TextAlign.end)
              const Icon(Icons.location_on_outlined),
          ],
        ),
        if (showDistance) _PostLocationDistance(postLocation: postLocation)
      ],
    );
  }
}

class _PostLocationDistance extends StatelessWidget {
  final ParseGeoPoint postLocation;
  const _PostLocationDistance({Key? key, required this.postLocation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentUser = context.read<AuthBloc>().getCurrentUser();
    if (currentUser == null) {
      return const SizedBox.shrink();
    }
    if (currentUser.userLocation != null && !currentUser.isAnonymousAccount) {
      return Padding(
        padding: const EdgeInsetsDirectional.only(start: 23),
        child: Text(
          currentUser.userLocation!
                  .computeDistanceInKilometers(postLocation)
                  .toStringAsFixed(1) +
              ' km ${context.loc.faraway}',
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
