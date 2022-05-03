import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/core/widgets/sized_box_16_h.dart';
import 'package:doors/core/widgets/title_with_under_line_in_the_end.dart';
import 'package:doors/features/manage_post/presentation/screens/create_or_edit_post_screen_part_two.dart';
import 'package:doors/features/manage_post/presentation/widgets/category_head_line_with_text_field.dart';
import 'package:doors/features/manage_post/presentation/widgets/description_head_line_with_text_field.dart';
import 'package:doors/core/widgets/keywords_head_line_text_field.dart';
import 'package:doors/features/manage_post/presentation/widgets/post_type_head_line_dropdown_button_form_field.dart';
import 'package:doors/features/manage_post/presentation/widgets/title_head_line_with_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateOrEditPostScreenPartOne extends StatefulWidget {
  final Post? post;
  static const routeName = '/create-or-edit-post-one';

  const CreateOrEditPostScreenPartOne({Key? key, required this.post})
      : super(key: key);

  @override
  State<CreateOrEditPostScreenPartOne> createState() =>
      _CreateOrEditPostScreenPartOneState();
}

class _CreateOrEditPostScreenPartOneState
    extends State<CreateOrEditPostScreenPartOne> {
  final _keyFrom = GlobalKey<FormState>();

  late var _title = widget.post?.postTitle ?? '';
  late var _postType = widget.post?.postType ?? PostType.need;
  late var _category = widget.post?.postCategory ?? '';
  late Set<String> _keywords = widget.post?.postKeywords ?? {};
  late var _description = widget.post?.postDescription ?? '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Hero(
                tag: 'card',
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 32.0,
                  ),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 40.0,
                      ),
                      child: Form(
                        key: _keyFrom,
                        child: Column(
                          children: [
                            TitleWithUnderLineInTheEnd(
                              label: widget.post == null
                                  ? context.loc.create_new_service
                                  : context.loc.edit_service,
                              numberOfUnderLinedChars: 2,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TitleHeadLineWithTextField(
                              initText: _title,
                              onSave: (title) {
                                _title = title!;
                              },
                            ),
                            const SizedBox16H(),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child:
                                      PostTypeHeadLineWithDropdownButtonFormField(
                                    initPostType: _postType,
                                    onSave: (postType) {
                                      _postType = postType ?? PostType.need;
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 32,
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 2.5),
                                    child: CategoryHeadLineWithTextField(
                                      initText: _category,
                                      onSave: (category) {
                                        _category = category ?? '';
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox16H(),
                            DescriptionHeadLineWithTextField(
                              initDescription: _description,
                              onDescriptionSave: (description) {
                                _description = description;
                              },
                            ),
                            const SizedBox16H(),
                            KeywordsHeadLineWithTextField(
                              initKeywords: _keywords,
                              onKeywordsSave: (keywords) {
                                _keywords = keywords;
                              },
                            ),
                            const SizedBox16H(),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: ElevatedButton(
                                child: Text(context.loc.next),
                                onPressed: () => _onPressed(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    if (_keyFrom.currentState?.validate() ?? false) {
      _keyFrom.currentState?.save();
      Post post = Post();
      if (widget.post != null) {
        post = widget.post!.getShallowCopy();
      }
      post
        ..postTitle = _title
        ..postCategory = _category
        ..postType = _postType
        ..postDescription = _description
        ..postKeywords = _keywords
        ..author = context.read<AuthBloc>().getCurrentUser()!;

      Navigator.of(context).pushNamed(
        CreateOrEditPostScreenPartTwo.routeName,
        arguments: post,
      );
    }
  }
}
