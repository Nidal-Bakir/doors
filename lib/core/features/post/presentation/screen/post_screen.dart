
import 'package:auto_size_text/auto_size_text.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/core/features/post/presentation/managers/favorite_post_bloc/favorite_post_bloc.dart';
import 'package:doors/core/features/post/presentation/widgets/keywords_row.dart';
import 'package:doors/core/features/post/presentation/widgets/post_cost.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/features/post/presentation/widgets/no_image_provided.dart';
import 'package:doors/core/features/post/presentation/widgets/post_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class PostScreen extends StatefulWidget {
  static const routeName = '/post-screen';
  final Post post;

  const PostScreen({Key? key, required this.post}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _PostImageWithBackButtonAndRate(
                postImage: widget.post.postImage,
                postRate: widget.post.postRate,
                postType: widget.post.postType,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    _PostTitle(
                      title: widget.post.postTitle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    _CategoryAndKeywordsAndPostType(
                      category: widget.post.postCategory,
                      keywords: widget.post.postKeywords,
                      postType: widget.post.postType,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    _LocationAndCost(
                      postLocation: widget.post.postLocation,
                      humanReadableLocation:
                          widget.post.postHumanReadableLocation,
                      maxCost: widget.post.maxCost,
                      minCost: widget.post.minCost,
                      currency: widget.post.postCostCurrency,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    _Description(
                      postDescription: widget.post.postDescription,
                    )
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    const Spacer(),
                    if (widget.post.postType == PostType.offer)
                      _PostUserRate(post: widget.post),
                    const SizedBox(height: 16),
                    _FavoriteAndChatButtons(post: widget.post),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _PostImageWithBackButtonAndRate extends StatelessWidget {
  final PostType postType;
  final ParseFile? postImage;
  final String postRate;
  const _PostImageWithBackButtonAndRate({
    Key? key,
    required this.postType,
    required this.postImage,
    required this.postRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: _screenSize.height * 0.4,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(25)),
        child: Stack(
          children: [
            _PostImage(postImage: postImage),
            const _BackButton(),
            if (postType == PostType.offer)
              _OfferedPostRate(
                postRate: postRate,
              ),
            const _PopupMenuButton()
          ],
        ),
      ),
    );
  }
}

class _PostImage extends StatelessWidget {
  final ParseFile? postImage;

  const _PostImage({Key? key, required this.postImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return postImage != null && postImage?.url != null
        ? Hero(
            tag: postImage!.url!,
            child: Image.network(
              postImage!.url!,
              fit: BoxFit.cover,
              width: double.infinity,
              errorBuilder: (_, __, ___) => const NoImageProvided(),
            ),
          )
        : const NoImageProvided();
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, top: 6),
      child: Material(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white.withOpacity(0.7),
        child: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Icon(Icons.arrow_back_rounded),
          ),
        ),
      ),
    );
  }
}

class _OfferedPostRate extends StatelessWidget {
  final String postRate;

  const _OfferedPostRate({Key? key, required this.postRate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            5,
          ),
          color: Colors.white.withOpacity(0.7),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  5,
                ),
              ),
              child: Icon(
                Icons.star_border_rounded,
                color: Theme.of(context).colorScheme.secondary,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              postRate,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}

class _PopupMenuButton extends StatelessWidget {
  const _PopupMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: PopupMenuButton(
        onSelected: (value) {
          if (openLogInScreenToNotLoggedInUser(context)) {
            return;
          }
          switch (value) {
            case 0:
              _openReportDialog(context);
              return;
          }
        },
        itemBuilder: (BuildContext context) => [
          const PopupMenuItem(
            value: 0,
            child: Text(
              'Report this post',
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _openReportDialog(BuildContext context) => showDialog<void>(
        context: context,
        builder: (context) {
          var _postReportType = PostReportType.spam;
          var _reportInfo = '';
          final _formKey = GlobalKey<FormState>();
          return StatefulBuilder(
            builder: (BuildContext context,
                void Function(void Function()) setState) {
              return Dialog(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: LineWithTextOnRow(
                            text: context.loc.report_this_post,
                          ),
                        ),
                        RadioListTile<PostReportType>(
                          title: Text(
                            context.loc.spam,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          groupValue: _postReportType,
                          value: PostReportType.spam,
                          onChanged: (reportType) {
                            setState(
                              () {
                                _postReportType = reportType!;
                              },
                            );
                          },
                        ),
                        RadioListTile<PostReportType>(
                          title: Text(
                            context.loc.violence,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          groupValue: _postReportType,
                          value: PostReportType.violence,
                          onChanged: (reportType) {
                            setState(
                              () {
                                _postReportType = reportType!;
                              },
                            );
                          },
                        ),
                        RadioListTile<PostReportType>(
                          title: Text(
                            context.loc.suspicious_service,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          groupValue: _postReportType,
                          value: PostReportType.suspiciousService,
                          onChanged: (reportType) {
                            setState(
                              () {
                                _postReportType = reportType!;
                              },
                            );
                          },
                        ),
                        RadioListTile<PostReportType>(
                          title: Text(
                            context.loc.other,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          groupValue: _postReportType,
                          value: PostReportType.other,
                          onChanged: (reportType) {
                            setState(
                              () {
                                _postReportType = reportType!;
                              },
                            );
                          },
                        ),
                        if (_postReportType == PostReportType.other)
                          Form(
                            key: _formKey,
                            child: TextFormField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 2,
                              enabled: _postReportType == PostReportType.other,
                              decoration: InputDecoration(
                                hintText:
                                    context.loc.please_tell_us_whats_wrong,
                              ),
                              onSaved: (reportInfo) {
                                _reportInfo = reportInfo!;
                              },
                              validator: (reportInfo) {
                                if (reportInfo?.isEmpty ?? false) {
                                  return context.loc.please_tell_us_whats_wrong;
                                }
                                return null;
                              },
                            ),
                          ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(context.loc.cancel),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                elevatedButtonTheme: ElevatedButtonThemeData(
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style
                                      ?.copyWith(
                                        minimumSize: MaterialStateProperty.all(
                                          const Size(60, 35),
                                        ),
                                      ),
                                ),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    _formKey.currentState?.save();
                                    // TODO:  call a bloc
                                    Navigator.of(context).pop();
                                  }
                                },
                                child: Text(context.loc.report),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      );
}

class _PostTitle extends StatelessWidget {
  final String title;

  const _PostTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: AutoSizeText(
            title,
            style: Theme.of(context).textTheme.headline5,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class _CategoryAndKeywordsAndPostType extends StatelessWidget {
  final String category;
  final List<String> keywords;
  final PostType postType;

  const _CategoryAndKeywordsAndPostType({
    Key? key,
    required this.category,
    required this.keywords,
    required this.postType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Text(
            category,
            style: Theme.of(context).textTheme.headline6,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: KeywordsRow(
            keywords: keywords,
            withColors: true,
          ),
        ),
        const SizedBox(width: 16),
        Container(
          child: Text(
            postType == PostType.need ? context.loc.need : context.loc.offer,
            style: Theme.of(context).textTheme.headline6,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ],
    );
  }
}

class _LocationAndCost extends StatelessWidget {
  final String? humanReadableLocation;
  final ParseGeoPoint postLocation;
  final double? minCost;
  final double? maxCost;
  final String? currency;

  const _LocationAndCost({
    Key? key,
    required this.humanReadableLocation,
    required this.postLocation,
    required this.minCost,
    required this.maxCost,
    required this.currency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Align(
            alignment: Alignment.centerLeft,
            child: PostLocation(
              humanReadableLocation: humanReadableLocation,
              postLocation: postLocation,
              mainAxisAlignment: MainAxisAlignment.start,
              textAlign: TextAlign.start,
              showDistance: true,
            ),
          ),
        ),
        Flexible(
          child: Align(
            alignment: Alignment.centerRight,
            child: PostCost(
              minCost: minCost,
              maxCost: maxCost,
              currency: currency,
            ),
          ),
        ),
      ],
    );
  }
}

class _Description extends StatelessWidget {
  final String postDescription;
  const _Description({Key? key, required this.postDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LineWithTextOnRow(text: context.loc.description),
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Text(
            postDescription,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ],
    );
  }
}

class _PostUserRate extends StatefulWidget {
  final Post post;
  const _PostUserRate({Key? key, required this.post}) : super(key: key);

  @override
  State<_PostUserRate> createState() => _PostUserRateState();
}

class _PostUserRateState extends State<_PostUserRate> {
  var _rate = 0.0;
  @override
  Widget build(BuildContext context) {
    final _colorScheme = Theme.of(context).colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        RatingBar(
          glowColor: _colorScheme.primary,
          glowRadius: 1,
          maxRating: 5,
          initialRating: _rate,
          minRating: 0,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.zero,
          onRatingUpdate: (rating) {
            if (openLogInScreenToNotLoggedInUser(context)) {
              return;
            }
            setState(() {
              _rate = rating;
            });
            print(rating);
          },
          ratingWidget: RatingWidget(
            empty: Icon(
              Icons.star_border_rounded,
              color: _colorScheme.secondary,
            ),
            half: Icon(
              Icons.star_half_rounded,
              color: _colorScheme.primary,
            ),
            full: Icon(
              Icons.star_rounded,
              color: _colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          _rate.toString(),
          style: Theme.of(context).textTheme.headline6,
        )
      ],
    );
  }
}

class _FavoriteAndChatButtons extends StatefulWidget {
  final Post post;
  const _FavoriteAndChatButtons({Key? key, required this.post})
      : super(key: key);

  @override
  State<_FavoriteAndChatButtons> createState() =>
      _FavoriteAndChatButtonsState();
}

class _FavoriteAndChatButtonsState extends State<_FavoriteAndChatButtons> {
  var _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocProvider<FavoritePostBloc>(
          create: (context) => GetIt.I.get<FavoritePostBloc>()
            ..add(FavoritePostIsFavoritePost(widget.post)),
          child: Builder(
            builder: (context) =>
                BlocConsumer<FavoritePostBloc, FavoritePostState>(
              listener: (context, state) {
                if (state is FavoritePostLoadFailure) {
                  showErrorSnackBar(
                      context, state.exception.getLocalMessageError(context));
                }
              },
              builder: (context, state) {
                if (state is FavoritePostLoadSuccess) {
                  _isFavorite = state.isFavorite;
                }
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(
                      _isFavorite
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      size: 30,
                      color: _isFavorite ? Colors.red : null,
                    ),
                    onPressed: state is FavoritePostInProgress
                        ? null
                        : () {
                            if (openLogInScreenToNotLoggedInUser(context)) {
                              return;
                            }
                            if (_isFavorite) {
                              context.read<FavoritePostBloc>().add(
                                    FavoritePostRemovePostFromFavoriteList(
                                      widget.post,
                                    ),
                                  );
                            } else {
                              context.read<FavoritePostBloc>().add(
                                    FavoritePostAddPostToFavoriteList(
                                      widget.post,
                                    ),
                                  );
                            }
                            setState(() {
                              _isFavorite = !_isFavorite;
                            });
                          },
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: ElevatedButton.icon(
            icon: const Icon(Icons.textsms_rounded),
            onPressed: () {
              if (openLogInScreenToNotLoggedInUser(context)) {
                return;
              }
            },
            label: Text(
              context.loc.chat,
            ),
          ),
        )
      ],
    );
  }
}
