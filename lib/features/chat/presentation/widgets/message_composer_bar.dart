import 'dart:io';

import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/presentation/managers/messaging_bloc/messaging_bloc.dart';
import 'package:doors/features/chat/presentation/widgets/chat_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class MessageComposerBar extends StatefulWidget {
  final ChatUserInfo chatUser;
  const MessageComposerBar({
    Key? key,
    required this.chatUser,
  }) : super(key: key);

  @override
  State<MessageComposerBar> createState() => _MessageComposerBarState();
}

class _MessageComposerBarState extends State<MessageComposerBar> {
  late final _textEditingController = TextEditingController();

  File? _selectedImageFile;
  var _text = '';
  var _crossFadeState = CrossFadeState.showFirst;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 8, top: 16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            child: AnimatedCrossFade(
              duration: const Duration(milliseconds: 200),
              crossFadeState: _crossFadeState,
              sizeCurve: Curves.fastOutSlowIn,
              firstCurve: Curves.fastOutSlowIn,
              secondCurve: Curves.fastOutSlowIn,
              firstChild: _TextField(
                textEditingController: _textEditingController,
                onTextChanged: (text) {
                  setState(() {
                    _text = text;
                  });
                },
                onImageSelected: (imageFile) {
                  setState(() {
                    _selectedImageFile = imageFile;
                    _crossFadeState = CrossFadeState.showSecond;
                  });
                },
              ),
              secondChild: _ImageToSend(
                imageFile: _selectedImageFile,
                onImageCanceled: _onImageCanceled,
              ),
            ),
          ),
          const SizedBox(width: 8),
          IgnorePointer(
            ignoring: !_isValidTextMessage(_text) && _selectedImageFile == null,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: ClipOval(
                child: Material(
                  color:
                      _isValidTextMessage(_text) || _selectedImageFile != null
                          ? _theme.colorScheme.primary
                          : _theme.colorScheme.primary.withOpacity(0.7),
                  child: InkWell(
                    onTap: () {
                      if (_selectedImageFile != null) {
                        context.read<MessagingBloc>().add(
                              MessagingMediaMessageSended(
                                mediaFile: File(_selectedImageFile!.path),
                                mediaMessageType: MessageType.image,
                                receiverUser: widget.chatUser,
                              ),
                            );
                        _onImageCanceled();
                      } else {
                        context.read<MessagingBloc>().add(
                              MessagingTextMessageSended(
                                messageText: _text,
                                receiverUser: widget.chatUser,
                              ),
                            );
                        setState(() {
                          _text = '';
                          _textEditingController.clear();
                        });
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.send_rounded,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onImageCanceled() {
    setState(() {
      _crossFadeState = CrossFadeState.showFirst;
    });

    Future.delayed(const Duration(milliseconds: 200)).then(
      (value) => setState(() {
        _selectedImageFile = null;
      }),
    );
  }
}

bool _isValidTextMessage(String text) {
  return text.trim().isNotEmpty;
}

class _TextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final VoidCallbackWithParam<String> onTextChanged;
  final VoidCallbackWithParam<File> onImageSelected;
  const _TextField({
    Key? key,
    required this.onTextChanged,
    required this.onImageSelected,
    required this.textEditingController,
  }) : super(key: key);

  @override
  State<_TextField> createState() => _TextFieldState();
}

class _TextFieldState extends State<_TextField> {
  final _picker = ImagePicker();
  var _text = '';

  @override
  void initState() {
    super.initState();

    widget.textEditingController.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    _text = widget.textEditingController.text;
    widget.onTextChanged(_text);
  }

  @override
  void dispose() {
    widget.textEditingController.removeListener(_onTextChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      minLines: 1,
      maxLines: 5,
      decoration: InputDecoration(
        hintText: context.loc.type_a_message,
        suffixIcon: AnimatedSlide(
          offset: _isValidTextMessage(_text) ? const Offset(0, 2) : Offset.zero,
          curve: Curves.easeInCubic,
          duration: const Duration(milliseconds: 200),
          child: ClipRRect(
            borderRadius: const BorderRadiusDirectional.horizontal(
              end: Radius.circular(8),
            ).resolve(
              Directionality.of(context),
            ),
            child: Material(
              type: MaterialType.button,
              color: Colors.transparent,
              child: IconButton(
                icon: const Icon(Icons.photo_library_rounded),
                onPressed: () async {
                  final xfile = await _picker.pickImage(
                    source: ImageSource.gallery,
                    imageQuality: GlobalConfig.imageQualityForImagePicker,
                  );
                  if (xfile?.path != null) {
                    widget.onImageSelected(File(xfile!.path));
                  }
                },
              ),
            ),
          ),
        ),
      ),
      enableSuggestions: true,
      keyboardType: TextInputType.multiline,
      textInputAction: TextInputAction.newline,
    );
  }
}

class _ImageToSend extends StatelessWidget {
  final File? imageFile;
  final VoidCallback onImageCanceled;
  const _ImageToSend({
    Key? key,
    required this.imageFile,
    required this.onImageCanceled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: _theme.colorScheme.primary,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ChatImageWidget(
              fileImage: imageFile,
              height: 200,
              width: 200,
              boxFit: BoxFit.contain,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Material(
              borderRadius: const BorderRadiusDirectional.only(
                bottomStart: Radius.circular(8),
              ),
              color: _theme.colorScheme.primary,
              child: IconButton(
                onPressed: () {
                  onImageCanceled();
                },
                icon: const Icon(
                  Icons.delete_forever_rounded,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
