import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/widgets/circular_profile_image.dart';
import 'package:doors/core/widgets/primary_color_background_for_scaffold.dart';
import 'package:doors/features/user_profile/presentation/screens/edit_profile_screen.dart';
import 'package:doors/features/user_profile/presentation/widgets/user_name_with_icon_account_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInfo extends StatelessWidget {
  final User visitedUser;
  final User currentUser;
  const UserInfo({
    Key? key,
    required this.visitedUser,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _subtitle2TextTheme = Theme.of(context).textTheme.subtitle2;
    return PrimaryColorBackgroundForScaffold(
      colorHeight: 90,
      scaffoldWidget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(
              tag: 'profileImage',
              child: CircularProfileImage(
                profileImage: visitedUser.profileImage,
                height: 150,
                width: 150,
              ),
            ),
            UserNameWithIconAccountType(
              accountType: visitedUser.accountType,
              name: visitedUser.name,
            ),
            const SizedBox(
              height: 8,
            ),
            if (visitedUser.bio != null)
              Text(
                visitedUser.bio!,
                style: _subtitle2TextTheme,
              ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                children: [
                  if (!visitedUser.isPrivateEmailAddress)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.alternate_email_rounded,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          visitedUser.username!,
                          style: _subtitle2TextTheme,
                        )
                      ],
                    ),
                  const SizedBox(
                    height: 8,
                  ),
                  if (!visitedUser.isPrivatePhoneNumber &&
                      visitedUser.phoneNumber != null &&
                      visitedUser.phoneNumber!.isNotEmpty)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.phone_iphone_rounded,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          visitedUser.phoneNumber!,
                          style: _subtitle2TextTheme,
                        )
                      ],
                    ),
                  const SizedBox(
                    height: 8,
                  ),
                  if (visitedUser.userHumanReadableLocation != null &&
                      visitedUser.userHumanReadableLocation!.isNotEmpty)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          visitedUser.userHumanReadableLocation!,
                          style: _subtitle2TextTheme,
                        )
                      ],
                    ),
                ],
              ),
            ),
            if (currentUser.userId == visitedUser.userId)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    final isEdited =
                        await Navigator.of(context).pushNamed<bool>(
                      EditProfileScreen.routeName,
                      arguments: currentUser,
                    );
                    if (isEdited ?? false) {
                      context
                          .read<AuthBloc>()
                          .add(const AuthGetUpdatedUserDataRequested());
                    }
                  },
                  child: Text(context.loc.edit_your_profile_details),
                ),
              ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
