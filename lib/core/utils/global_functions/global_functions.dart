import 'dart:io' show File, Platform;
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path/path.dart' as path;

final GlobalKey _homeScaffoldGlobalKey = GlobalKey();
GlobalKey getHomeScaffoldGlobalKey() => _homeScaffoldGlobalKey;

String currencyCode(BuildContext context) {
  Locale locale = Localizations.localeOf(context);
  var format = NumberFormat.simpleCurrency(locale: locale.toString());
  return format.currencyName ?? 'USD';
}

Future<String> getFileSize(String filepath, int decimals) async {
  var file = File(filepath);
  int bytes = await file.length();
  if (bytes <= 0) return "0 B";
  const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
  var i = (log(bytes) / log(1024)).floor();
  return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + ' ' + suffixes[i];
}

/// there is more posts to load if the remainder of loaded posts with
/// amountOfResultPeerRequest equal zero.
///
/// (in the most of the cases, not allows true).
bool canLoadMoreData(int postsCount) {
  if (postsCount == 0) {
    return false;
  }
  return postsCount.remainder(GlobalConfig.amountOfResultPeerRequest) == 0;
}

Future<void> openSimpleAlertDialog({
  required BuildContext context,
  required String title,
  required String content,
  required List<Widget> actions,
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      titleTextStyle: Theme.of(context).textTheme.headline5,
      title: Center(
        child: Text(title),
      ),
      contentTextStyle: Theme.of(context).textTheme.headline6,
      content: Text(
        content,
      ),
      actions: actions,
    ),
  );
}

Future<void> showNotVerifiedEmailWarningDialog(BuildContext context) {
  return openSimpleAlertDialog(
    context: context,
    title: context.loc.warning + ' ' + context.loc.not_verified_email_address,
    content: context.loc
        .if_you_do_not_verify_your_email_Your_account_will_be_suspended_shortly_and_then_deleted,
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text(context.loc.i_understand),
      ),
    ],
  );
}

String extractLangCodeFromPlatformService() {
  // localeName could be (en) or (en_US) or (en_US.UTF-8)
  return Platform.localeName.split('_')[0];
}

String extractISOCountryCodeFromPlatformService() {
  // localeName could be (en) or (en_US) or (en_US.UTF-8)
  try {
    return Platform.localeName.split('_')[1].split('.')[0];
  } on RangeError {
    return 'US';
  }
}

bool notificationListener(
    {required ScrollNotification notification,
    required void Function() onNotify}) {
  if (notification.metrics.pixels >=
      notification.metrics.maxScrollExtent * 0.8) {
    onNotify();
  }
  return true;
}

/// Opens log-in screen on top of the Caller screen, to not logged-in user.
///
/// Use this to force the user to log-in in case the user want to do operation
/// only the logged-in users can do.
///
/// Returns true to indicate that the user should log-in and the required operation
/// should be terminated.
///
/// other wise returns false, it's safe to continue with this operation.
bool openLogInScreenToNotLoggedInUser(BuildContext context) {
  final _currentUser = context.read<AuthBloc>().getCurrentUser();
  if (_currentUser == null || _currentUser.isAnonymousAccount) {
    Navigator.of(context).pushNamed(LogInScreen.routeName);
    return true;
  }
  return false;
}

void showErrorSnackBar(BuildContext context, String content) {
  _showSnackBar(context, content, true);
}

void showSuccussSnackBar(BuildContext context, String content) {
  _showSnackBar(context, content, false);
}

void _showSnackBar(BuildContext context, String content, bool forError) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: forError
            ? Theme.of(context).colorScheme.error
            : const Color(0xFF68b467),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        duration: const Duration(seconds: 3),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    forError ? Icons.error_rounded : Icons.check_circle_rounded,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: Text(
                      content,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              color: Theme.of(context).colorScheme.surface,
              visualDensity: VisualDensity.compact,
              onPressed: () {
                ScaffoldMessenger.maybeOf(
                        getHomeScaffoldGlobalKey().currentContext ?? context)
                    ?.hideCurrentSnackBar();
              },
              icon: const Icon(
                Icons.close_rounded,
              ),
            )
          ],
        ),
      ),
    );
}

Future<Either<String, XFile?>?> showModalBottomSheetToSelectPhoto(
  BuildContext context,
  bool showDeleteOption,
) async {
  final _picker = ImagePicker();
  return await showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showDeleteOption)
              InkWell(
                onTap: () async {
                  Navigator.of(context)
                      .pop(const Left<String, XFile>('remove'));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.delete),
                    Text(context.loc.delete),
                  ],
                ),
              ),
            InkWell(
              splashColor: Colors.black,
              onTap: () async {
                Navigator.of(context).pop(Right<String, XFile?>(
                  await _picker.pickImage(
                    source: ImageSource.camera,
                    imageQuality: GlobalConfig.imageQualityForImagePicker,
                    preferredCameraDevice: CameraDevice.front,
                  ),
                ));
              },
              child: SizedBox(
                height: 50,
                width: 50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.camera),
                    Text(context.loc.camera),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                Navigator.of(context).pop(Right<String, XFile?>(
                  await _picker.pickImage(
                    source: ImageSource.gallery,
                    imageQuality: GlobalConfig.imageQualityForImagePicker,
                  ),
                ));
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.image),
                  Text(context.loc.gallery),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

Future<void> showDialogTellTheUserThatStoragePermissionIsPermanentlyDenied(
  BuildContext context,
) async {
  await openSimpleAlertDialog(
    context: context,
    title: context.loc.we_permanently_can_not_have_storage_permissions,
    content:
        context.loc.please_go_to_setting_and_give_the_app_storage_permissions,
    actions: [
      TextButton(
        style: Theme.of(context).textButtonTheme.style?.copyWith(
              foregroundColor: MaterialStateProperty.all(
                Colors.grey,
              ),
            ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text(context.loc.cancel),
      ),
      TextButton(
        onPressed: () {
          openAppSettings();
          Navigator.of(context).pop();
        },
        child: Text(
          context.loc.open_app_settings,
        ),
      )
    ],
  );
}

Future<void> showDialogToExplainWhyWeNeedStoragePermission({
  required BuildContext context,
  required VoidCallback onRetryPressed,
  required String content,
}) async {
  await openSimpleAlertDialog(
    context: context,
    title: context.loc.we_do_not_have_storage_permissions,
    content: content,
    actions: [
      TextButton(
        style: Theme.of(context).textButtonTheme.style?.copyWith(
              foregroundColor: MaterialStateProperty.all(
                Colors.grey,
              ),
            ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text(context.loc.cancel),
      ),
      TextButton(
        onPressed: onRetryPressed,
        child: Text(
          context.loc.retry,
        ),
      )
    ],
  );
}

/// pad file name with numbers in case of duplication.
///
/// Returns unique file name in dir
Future<String> getNonDuplicatedFileNameInDir(String filePath) async {
  final fileExt = path.extension(filePath);
  final fileDir = path.dirname(filePath);
  final fileNameWithoutExt = path.basenameWithoutExtension(filePath);

  var newFileNameWithoutExt = fileNameWithoutExt;

  var file = File(filePath);

  for (int i = 1;; i++) {
    if (!(await file.exists())) {
      break;
    }
    newFileNameWithoutExt = fileNameWithoutExt + '_$i';

    file = File('$fileDir/$newFileNameWithoutExt$fileExt');
  }
  return '$newFileNameWithoutExt$fileExt';
}

const undefined = Object();

/// If [param] not passed to [copyWith] function its value will be [undefined].
/// So we can differentiate between null parameter and not passed parameter.
bool isNotPassedParameter(Object? param) => param == undefined;
