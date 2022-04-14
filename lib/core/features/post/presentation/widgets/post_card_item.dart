import 'package:auto_size_text/auto_size_text.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/core/features/post/presentation/screen/post_screen.dart';
import 'package:doors/core/features/post/presentation/widgets/keywords_row.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class PostCardItem extends StatelessWidget {
  final Post post;
  const PostCardItem({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed(PostScreen.routeName, arguments: post);
        },
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
                          child: _CircularProfileImage(
                            profileImage: post.author.profileImage,
                          ),
                        ),
                        flex: 0,
                      ),
                      Expanded(
                        child: Center(
                          child: Container(
                            margin: const EdgeInsets.only(right: 58),
                            child: AutoSizeText(
                              post.postTitle,
                              style: Theme.of(context).textTheme.headline6,
                              maxLines: 2,
                              maxFontSize: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .fontSize!,
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
                            post.author.name,
                            style: Theme.of(context).textTheme.bodyText1,
                            maxLines: 1,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(Icons.location_on_outlined),
                            AutoSizeText(
                              post.postHumanReadableLocation ??
                                  context.loc.unknown_location,
                              style: Theme.of(context).textTheme.subtitle2,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                            ),
                          ],
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
                      if (post.postImage != null && post.postImage?.url != null)
                        Flexible(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              post.postImage!.url!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (post.postKeywords.isNotEmpty)
                              KeywordsRow(
                                keywords: post.postKeywords,
                                limit: 3,
                              ),
                            Container(
                              foregroundDecoration: BoxDecoration(
                                // add fade only if its long description around 45 chars
                                gradient: post.postDescription.length < 45
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
                                post.postDescription,
                                maxLines: 3,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ),
                            if (post.maxCost != null || post.maxCost != null)
                              _PostCost(
                                maxCost: post.maxCost,
                                minCost: post.minCost,
                                currency: post.postCostCurrency,
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

class _PostCost extends StatelessWidget {
  final double? minCost;
  final double? maxCost;
  final String? currency;

  const _PostCost({
    Key? key,
    required this.minCost,
    required this.maxCost,
    this.currency = '\$',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (maxCost != null && minCost != null) {
      return FittedBox(
        child: LineWithTextOnRow(
          text:
              '${context.loc.from} $minCost$currency ${context.loc.to} $maxCost$currency',
        ),
      );
    }
    if (maxCost != null) {
      return FittedBox(
        child: LineWithTextOnRow(
          text: '${context.loc.up_to} $maxCost$currency',
        ),
      );
    }
    return const SizedBox.shrink();
  }
}

class _CircularProfileImage extends StatelessWidget {
  final ParseFile? profileImage;

  const _CircularProfileImage({Key? key, required this.profileImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(
          50,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          50,
        ),
        child: (profileImage == null || profileImage?.url == null)
            ? Image.asset(
                'assets/images/blank-profile-picture.png',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              )
            : Image.network(
                profileImage!.url!,
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
