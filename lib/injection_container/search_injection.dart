import 'package:doors/core/enums/enums.dart';
import 'package:doors/features/search/data/posts_search_local_data_source/posts_search_local_data_source.dart';
import 'package:doors/features/search/data/posts_search_remote_data_source/posts_search_remote_data_source.dart';
import 'package:doors/features/search/presentation/managers/posts_search_bloc/posts_search_bloc.dart';
import 'package:doors/features/search/repository/posts_search_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void searchInit() {
  // blocs
  di.registerFactoryParam<PostsSearchBloc, PostsViewFilter, void>(
      (postsTypeToSearch, _) => PostsSearchBloc(
            di.get(),
            postsTypeToSearch,
          ));

  // repositories
  di.registerLazySingleton<PostsSearchRepository>(
      () => PostsSearchRepository(di.get(), di.get()));

  // data sources
  di.registerLazySingleton<PostsSearchLocalDataSource>(
      () => PostsSearchLocalDataSourceImpl());

  di.registerLazySingleton<PostsSearchRemoteDataSource>(
      () => PostsSearchRemoteDataSourceImpl());
}
