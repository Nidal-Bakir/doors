import 'package:auto_size_text/auto_size_text.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/features/post/presentation/widgets/keywords_row.dart';
import 'package:doors/core/features/post/presentation/widgets/post_cost.dart';
import 'package:doors/core/widgets/circular_profile_image.dart';
import 'package:doors/core/widgets/network_image_from_parse_file.dart';
import 'package:doors/core/features/post/presentation/widgets/post_location.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class PostCardItem extends StatelessWidget {
  final User author;
  final VoidCallback onTap;
  final String postTitle;
  final String? postHumanReadableLocation;
  final ParseGeoPoint postLocation;
  final ParseFile? postImage;
  final Set<String>? postKeywords;
  final String postDescription;
  final String? postCostCurrency;
  final double? minCost;
  final double? maxCost;

  const PostCardItem({
    Key? key,
    required this.author,
    required this.onTap,
    required this.postTitle,
    required this.postHumanReadableLocation,
    required this.postLocation,
    required this.postImage,
    required this.postKeywords,
    required this.postDescription,
    required this.postCostCurrency,
    required this.minCost,
    required this.maxCost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: CircularProfileImage(
                            profileImage: author.profileImage,
                          ),
                        ),
                        flex: 0,
                      ),
                      Expanded(
                        child: Center(
                          child: Container(
                            margin: const EdgeInsets.only(right: 58),
                            child: Text(
                              postTitle,
                              style: Theme.of(context).textTheme.headline6,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: AutoSizeText(
                            author.name,
                            style: Theme.of(context).textTheme.bodyText1,
                            maxLines: 1,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Flexible(
                        child: PostLocation(
                          humanReadableLocation: postHumanReadableLocation,
                          postLocation: postLocation,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 140,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: _CardPostImage(postImage: postImage),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            if (postKeywords?.isNotEmpty ?? false)
                              KeywordsRow(
                                key: Key(postKeywords!.join('')),
                                isCardItemView: true,
                                keywords: postKeywords!,
                                limit: 3,
                              ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              foregroundDecoration: BoxDecoration(
                                // add fade only if its long description around 45 chars
                                gradient: postDescription.length <= 30
                                    ? null
                                    : LinearGradient(
                                        stops: const [0.3, 0.8],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.white.withOpacity(0.9),
                                          Colors.white10,
                                        ],
                                      ),
                              ),
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                postDescription,
                                maxLines: 3,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ),
                            const Spacer(),
                            if (maxCost != null || minCost != null)
                              PostCost(
                                maxCost: minCost != null ? null : maxCost,
                                minCost: minCost,
                                currency: postCostCurrency,
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CardPostImage extends StatelessWidget {
  final ParseFile? postImage;
  const _CardPostImage({Key? key, required this.postImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: NetworkImageFromParseFile(
        image: postImage,
        width: double.infinity,
        cacheHeight: 140,
        height: 140,
      ),
    );
  }
}
