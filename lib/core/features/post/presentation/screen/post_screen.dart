import 'package:auto_size_text/auto_size_text.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/post/model/post_rate.dart';
import 'package:doors/core/features/post/model/post_report.dart';
import 'package:doors/core/features/post/presentation/managers/favorite_post_bloc/favorite_post_bloc.dart';
import 'package:doors/core/features/post/presentation/managers/post_report_bloc/report_bloc.dart';
import 'package:doors/core/features/post/presentation/managers/user_rate_bloc/user_rate_bloc.dart';
import 'package:doors/core/features/post/presentation/widgets/keywords_row.dart';
import 'package:doors/core/features/post/presentation/widgets/post_cost.dart';
import 'package:doors/core/features/post/presentation/widgets/post_location.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/models/post.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/network_image_from_parse_file.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/manage_post/presentation/screens/create_or_edit_job_post.dart';
import 'package:doors/features/manage_post/presentation/screens/create_or_edit_post_screen_part_one.dart';
import 'package:doors/features/job_application/presentation/screens/send_job_application_screen.dart';
import 'package:doors/features/user_profile/presentation/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

bool _isServicePost(Post currentPost) => currentPost is ServicePost;

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
    final _currentUser = context.read<AuthBloc>().getCurrentUser();
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          _PostImageWithBackButtonAndRateWithMenu(
            currentPost: widget.post,
            currentUser: _currentUser,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                children: [
                  _PostTitle(
                    title: widget.post.postTitle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  if (_isServicePost(widget.post))
                    _ServicePostCategoryAndKeywordsAndPostType(
                      category: widget.post.postCategory,
                      keywords: (widget.post as ServicePost).postKeywords,
                      postType: (widget.post as ServicePost).postType,
                    ),
                  if (!_isServicePost(widget.post))
                    _JobCategoryAndJobTypes(
                      category: widget.post.postCategory,
                      jobTypes: (widget.post as JobPost).jobTypes,
                    ),
                  const SizedBox(
                    height: 16,
                  ),
                  _LocationAndCost(
                    postLocation: widget.post.postLocation,
                    humanReadableLocation:
                        widget.post.postHumanReadableLocation,
                    maxCost: _isServicePost(widget.post)
                        ? (widget.post as ServicePost).maxCost
                        : null,
                    minCost: _isServicePost(widget.post)
                        ? (widget.post as ServicePost).minCost
                        : null,
                    currency: _isServicePost(widget.post)
                        ? (widget.post as ServicePost).postCostCurrency
                        : null,
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                children: [
                  const Spacer(),
                  //hide the rate bar if the current user is the author of this post or its a job post
                  if (_isServicePost(widget.post) &&
                      (widget.post as ServicePost).postType ==
                          ServiceType.offer &&
                      _currentUser?.userId != widget.post.author.userId)
                    _PostUserRate(
                      currentPost: widget.post as ServicePost,
                      currentUser: _currentUser!,
                    ),
                  const SizedBox(height: 16),
                  if (_currentUser != null)
                    _FavoriteAndChatButtons(
                      currentPost: widget.post,
                      currentUser: _currentUser,
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _PostImageWithBackButtonAndRateWithMenu extends StatelessWidget {
  final Post currentPost;
  final User? currentUser;

  const _PostImageWithBackButtonAndRateWithMenu({
    Key? key,
    required this.currentPost,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _height = _mediaQuery.size.height * 0.45;
    return SliverAppBar(
      toolbarHeight: 45,
      expandedHeight: _height - _mediaQuery.viewPadding.top,
      automaticallyImplyLeading: false,
      leading: const _BackButton(),
      actions: [
        _PopupMenuButton(
          currentPost: currentPost,
          currentUser: currentUser,
        )
      ],
      flexibleSpace: Stack(children: [
        Positioned.fill(
          child: NetworkImageFromParseFile(
            height: _height,
            circularProgressIndicatorColor:
                Theme.of(context).colorScheme.secondary,
            image: currentPost.postImage,
            width: double.infinity,
            cacheHeight: _height.toInt(),
          ),
        ),
        if (_isServicePost(currentPost) &&
            ((currentPost as ServicePost).postType == ServiceType.offer))
          _OfferedPostRate(
            postRate: (currentPost as ServicePost).postRate,
          ),
      ]),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, bottom: 6, top: 6),
      child: Material(
        type: MaterialType.button,
        borderRadius: BorderRadius.circular(5),
        color: Colors.white.withOpacity(0.7),
        child: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(Icons.arrow_back_rounded),
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
        color: Colors.white.withOpacity(0.7),
        padding: const EdgeInsets.all(8),
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
  final Post currentPost;
  final User? currentUser;
  const _PopupMenuButton({
    Key? key,
    required this.currentPost,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: PopupMenuButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        onSelected: (value) {
          switch (value) {
            case 0:
              if (openLogInScreenToNotLoggedInUser(context)) {
                return;
              }
              _openReportDialog(
                  context, currentPost as ServicePost, currentUser);
              return;
            case 1:
              if (openLogInScreenToNotLoggedInUser(context)) {
                return;
              }
              if (_isServicePost(currentPost)) {
                Navigator.of(context).pushNamed(
                  CreateOrEditPostScreenPartOne.routeName,
                  arguments: currentPost as ServicePost,
                );
              } else {
                Navigator.of(context).pushNamed(
                  CreateOrEditJobPost.routeName,
                  arguments: currentPost as JobPost,
                );
              }

              return;
            case 2:
              if (openLogInScreenToNotLoggedInUser(context)) {
                return;
              }
              _openConfirmationDialog(context, currentPost, currentUser);
              return;
            case 3:
              Navigator.of(context).pushNamed(
                UserProfileScreen.routeName,
                arguments: currentPost.author,
              );
              return;
          }
        },
        itemBuilder: (BuildContext context) => [
          // hide the report button if the current user is the author of this post
          if (_isServicePost(currentPost) &&
              currentUser != null &&
              currentUser!.userId != currentPost.author.userId)
            PopupMenuItem(
              value: 0,
              child: Row(
                children: [
                  const Icon(Icons.report_gmailerrorred_rounded),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    context.loc.report_this_post,
                  ),
                ],
              ),
            ),
          // show the edit button if the current user is the author of this post
          if (currentUser != null &&
              currentUser!.userId == currentPost.author.userId)
            PopupMenuItem(
              value: 1,
              child: Row(
                children: [
                  const Icon(Icons.mode_edit_outlined),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    context.loc.edit_this_post,
                  ),
                ],
              ),
            ),
          // show the delete button if the current user is the author of this post
          if (currentUser != null &&
              currentUser!.userId == currentPost.author.userId)
            PopupMenuItem(
              value: 2,
              child: Row(
                children: [
                  const Icon(Icons.delete_outline_rounded),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    context.loc.delete_this_post,
                  ),
                ],
              ),
            ),
          // show open user profile button if the current user is not the author of the this post
          if (currentUser != null &&
              currentUser!.userId != currentPost.author.userId)
            PopupMenuItem(
              value: 3,
              child: Row(
                children: [
                  const Icon(Icons.account_circle_outlined),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    context.loc.open_user_profile,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _openConfirmationDialog(
          BuildContext parentContext, Post currentPost, User? currentUser) =>
      showDialog(
        context: parentContext,
        builder: (context) {
          return BlocConsumer<ManagePostBloc, ManagePostState>(
            listener: (context, state) {
              if (state is ManagePostOperationFailure) {
                showErrorSnackBar(
                  parentContext,
                  context.loc.unable_to_delete_this_post +
                      '. ' +
                      state.error.getLocalMessageError(context),
                );
                Navigator.of(context).pop();
              } else if (state is ManagePostDeleteSuccuss) {
                showSuccussSnackBar(
                  context,
                  context.loc.the_post_was_deleted_successfully,
                );
                Navigator.of(context).popUntil((route) => route.isFirst);
              }
            },
            builder: (context, state) {
              return AlertDialog(
                titleTextStyle: Theme.of(context).textTheme.headline5,
                title: Center(
                  child: Text(context.loc.cautious),
                ),
                contentTextStyle: Theme.of(context).textTheme.headline6,
                content: Text(
                  context.loc.are_you_sure_that_you_want_to_delete_this_post,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(context.loc.cancel),
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    style: Theme.of(context).textButtonTheme.style?.copyWith(
                          foregroundColor: MaterialStateProperty.all(
                            Colors.grey,
                          ),
                        ),
                    onPressed: () {
                      context
                          .read<ManagePostBloc>()
                          .add(ManagePostDeleted(currentPost));
                    },
                    child: Text(
                      context.loc.delete,
                    ),
                  )
                ],
              );
            },
          );
        },
      );

  Future<void> _openReportDialog(BuildContext parentContext,
          ServicePost currentPost, User? currentUser) =>
      showDialog<void>(
        context: parentContext,
        builder: (context) {
          var _postReportType = PostReportType.spam;
          var _reportInfo = '';
          final _formKey = GlobalKey<FormState>();
          return BlocProvider<ReportBloc>(
            create: (context) => GetIt.I.get<ReportBloc>(),
            child: StatefulBuilder(
              builder: (context, setState) {
                return Dialog(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
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
                                enabled:
                                    _postReportType == PostReportType.other,
                                decoration: InputDecoration(
                                  hintText:
                                      context.loc.please_tell_us_whats_wrong,
                                ),
                                onSaved: (reportInfo) {
                                  _reportInfo = reportInfo!;
                                },
                                validator: (reportInfo) {
                                  if (reportInfo?.isEmpty ?? false) {
                                    return context
                                        .loc.please_tell_us_whats_wrong;
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
                                          minimumSize:
                                              MaterialStateProperty.all(
                                            const Size(60, 35),
                                          ),
                                        ),
                                  ),
                                ),
                                child: BlocConsumer<ReportBloc, ReportState>(
                                  listener: (context, state) {
                                    if (state is ReportInProgress) {
                                      return;
                                    }
                                    if (state is ReportFailure) {
                                      showErrorSnackBar(
                                          parentContext,
                                          state.error
                                              .getLocalMessageError(context));
                                    } else if (state is ReportSuccuss) {
                                      showSuccussSnackBar(
                                        parentContext,
                                        context.loc
                                            .thank_you_for_reporting_this_post_we_will_look_on_it,
                                      );
                                    }
                                    Navigator.of(context).pop();
                                  },
                                  builder: (context, state) {
                                    return ElevatedButton(
                                      onPressed: state is ReportInProgress
                                          ? null
                                          : () {
                                              if (_formKey.currentState
                                                      ?.validate() ??
                                                  false ||
                                                      _postReportType !=
                                                          PostReportType
                                                              .other) {
                                                _formKey.currentState?.save();
                                                if (currentUser == null) {
                                                  return;
                                                }
                                                final _postReport = PostReport()
                                                  ..reportType = _postReportType
                                                  ..reportMoreInfo = _reportInfo
                                                  ..reportAuthor = currentUser
                                                  ..reportedServicePost =
                                                      currentPost;

                                                context.read<ReportBloc>().add(
                                                      ReportPostReported(
                                                        _postReport,
                                                      ),
                                                    );
                                              }
                                            },
                                      child: Text(context.loc.report),
                                    );
                                  },
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
            ),
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

class _JobCategoryAndJobTypes extends StatelessWidget {
  final String category;
  final Set<JobType> jobTypes;

  const _JobCategoryAndJobTypes({
    Key? key,
    required this.category,
    required this.jobTypes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(child: FittedBox(child: _TextInRoundedBox(text: category))),
        const SizedBox(width: 8),
        Flexible(
          child: FittedBox(
            child: Row(
                children: jobTypes
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: _TextInRoundedBox(
                          text: e.localizedJobType(context),
                          boxBackgroundColor:
                              Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    )
                    .toList()),
          ),
        )
      ],
    );
  }
}

class _ServicePostCategoryAndKeywordsAndPostType extends StatelessWidget {
  final String category;
  final Set<String> keywords;
  final ServiceType postType;

  const _ServicePostCategoryAndKeywordsAndPostType({
    Key? key,
    required this.category,
    required this.keywords,
    required this.postType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _TextInRoundedBox(text: category),
            const SizedBox(width: 16),
            _TextInRoundedBox(
              text: postType.localizedServiceType(context),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        if (keywords.isNotEmpty)
          FittedBox(
            child: KeywordsRow(
              keywords: keywords,
              isCardItemView: false,
              withColors: true,
            ),
          ),
      ],
    );
  }
}

class _TextInRoundedBox extends StatelessWidget {
  final String text;

  /// default to colorScheme.primary
  final Color? boxBackgroundColor;
  const _TextInRoundedBox({
    Key? key,
    required this.text,
    this.boxBackgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: boxBackgroundColor ?? Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(5),
      ),
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
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Align(
            alignment: Alignment.centerLeft,
            child: PostLocation(
              maxLines: 2,
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

class _PostUserRate extends StatelessWidget {
  final ServicePost currentPost;
  final User currentUser;
  const _PostUserRate({
    Key? key,
    required this.currentPost,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _colorScheme = Theme.of(context).colorScheme;
    PostRate _rate = PostRate()
      ..rate = 0.0
      ..servicePost = currentPost
      ..rateAuthor = currentUser;
    PostRate _oldRate = PostRate()
      ..rate = 0.0
      ..servicePost = currentPost
      ..rateAuthor = currentUser;
    return BlocProvider<UserRateBloc>(
      create: (context) {
        final _bloc = GetIt.I.get<UserRateBloc>();
        if (!currentUser.isAnonymousAccount) {
          _bloc.add(UserRateLoaded(currentPost));
        }
        return _bloc;
      },
      child: Builder(
        builder: (context) {
          return BlocConsumer<UserRateBloc, UserRateState>(
            listener: (context, state) {
              if (state is UserRateLoadFailure) {
                showErrorSnackBar(
                    context, state.error.getLocalMessageError(context));
              }
            },
            builder: (context, state) {
              if (state is UserRateLoadSuccess) {
                _rate = state.postRate?.getShallowCopy() ??
                    (PostRate()
                      ..rate = 0.0
                      ..servicePost = currentPost
                      ..rateAuthor = currentUser);

                _oldRate = state.postRate?.getShallowCopy() ??
                    (PostRate()
                      ..rate = 0.0
                      ..servicePost = currentPost
                      ..rateAuthor = currentUser);
              } else if (state is UserRateLoadFailure) {
                _rate.rate = _oldRate.rate;
              }

              return StatefulBuilder(
                builder: (context, setState) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RatingBar(
                        glowColor: _colorScheme.primary,
                        glowRadius: 1,
                        maxRating: 5,
                        initialRating: _rate.rate,
                        minRating: 0,
                        ignoreGestures: state is UserRateInProgress &&
                            !currentUser.isAnonymousAccount,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.zero,
                        onRatingUpdate: (rating) {
                          if (openLogInScreenToNotLoggedInUser(context)) {
                            return;
                          }
                          setState(() {
                            _rate.rate = rating;
                          });

                          if (_rate.rate != _oldRate.rate) {
                            context
                                .read<UserRateBloc>()
                                .add(UserRatePosted(_rate));
                          }
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
                      AnimatedCrossFade(
                        firstChild: const SizedBox.square(
                          dimension: 25,
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: LoadingIndicator(),
                          ),
                        ),
                        secondChild: Text(
                          _rate.rate.toString(),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        crossFadeState: !currentUser.isAnonymousAccount &&
                                state is UserRateInProgress
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: const Duration(
                          milliseconds: 300,
                        ),
                      )
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class _FavoriteAndChatButtons extends StatefulWidget {
  final Post currentPost;
  final User currentUser;
  const _FavoriteAndChatButtons({
    Key? key,
    required this.currentPost,
    required this.currentUser,
  }) : super(key: key);

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
          create: (context) {
            final _bloc = GetIt.I.get<FavoritePostBloc>();
            if (!widget.currentUser.isAnonymousAccount) {
              _bloc.add(FavoritePostIsFavoritePost(widget.currentPost));
            }
            return _bloc;
          },
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
                        ? (widget.currentUser.isAnonymousAccount
                            ? () {
                                openLogInScreenToNotLoggedInUser(context);
                              }
                            : null)
                        : () {
                            if (openLogInScreenToNotLoggedInUser(context)) {
                              return;
                            }
                            if (_isFavorite) {
                              context.read<FavoritePostBloc>().add(
                                    FavoritePostRemovePostFromFavoriteList(
                                      widget.currentPost,
                                    ),
                                  );
                            } else {
                              context.read<FavoritePostBloc>().add(
                                    FavoritePostAddPostToFavoriteList(
                                      widget.currentPost,
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
            icon: _isServicePost(widget.currentPost)
                ? const Icon(Icons.textsms_rounded)
                : const ImageIcon(
                    AssetImage('assets/icons/submit-resume.png'),
                  ),
            onPressed:
                widget.currentUser.userId == widget.currentPost.author.userId
                    ? null
                    : () {
                        if (openLogInScreenToNotLoggedInUser(context)) {
                          return;
                        }
                        if (_isServicePost(widget.currentPost)) {
                          // TODO : open chat screen
                        } else {
                          Navigator.of(context).pushNamed(
                            SendJobApplicationScreen.routeName,
                            arguments: widget.currentPost,
                          );
                        }
                      },
            label: Text(
              _isServicePost(widget.currentPost)
                  ? context.loc.chat
                  : context.loc.apply,
            ),
          ),
        )
      ],
    );
  }
}
