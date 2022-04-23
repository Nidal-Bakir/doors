import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class FavoritePostsRemoteDataSource {
  Future<UnmodifiableListView<Post>> getFavoritePosts(int amountToSkip);
}

class FavoritePostsRemoteDataSourceImpl extends FavoritePostsRemoteDataSource {
  @override
  Future<UnmodifiableListView<Post>> getFavoritePosts(int amountToSkip) async {
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException(
          'Anonymous user can not have favorite posts');
    }

    final userFavoritePostsQuery = QueryBuilder.name(Post.keyClassName)
      ..whereRelatedTo(
          User.keyFavoritePosts, User.keyUserClassName, _currentUser.userId)
      ..includeObject([Post.keyAuthor])
      ..excludeKeys(User.keysToExcludeFromQueriesRelatedToUser())
      ..setAmountToSkip(amountToSkip)
      ..setLimit(GlobalConfig.amountOfResultPeerRequest);

    final ParseResponse listOfFavoritePostsResponse;
    try {
      listOfFavoritePostsResponse = await userFavoritePostsQuery.query();
    } on Exception {
      throw const NoConnectionException('can not get a list of favorite posts');
    }
    if (listOfFavoritePostsResponse.success &&
        listOfFavoritePostsResponse.error == null &&
        listOfFavoritePostsResponse.result != null) {
      return UnmodifiableListView(
        List<Post>.from(
          listOfFavoritePostsResponse.results!,
        ),
      );
    } else {
      final error = ParseException.extractParseException(
          listOfFavoritePostsResponse.error!);
      // parse sdk will return error in case no results found
      if (error is ParseSuccessResponseWithNoResults) {
        return UnmodifiableListView(List.empty());
      }
      throw error;
    }
  }
}
