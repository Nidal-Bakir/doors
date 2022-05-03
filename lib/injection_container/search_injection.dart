import 'package:doors/features/search/posts_search/data/posts_search_local_data_source/posts_search_local_data_source.dart';
import 'package:doors/features/search/posts_search/data/posts_search_remote_data_source/posts_search_remote_data_source.dart';
import 'package:doors/features/search/posts_search/presentation/managers/posts_search_bloc/posts_search_bloc.dart';
import 'package:doors/features/search/posts_search/repository/posts_search_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void searchInit() {
  // blocs
  di.registerFactory<PostsSearchBloc>(() => PostsSearchBloc(di.get()));

  // repositories
  di.registerLazySingleton<PostsSearchRepository>(
      () => PostsSearchRepository(di.get(), di.get()));

  // data sources
  di.registerLazySingleton<PostsSearchLocalDataSource>(
      () => PostsSearchLocalDataSourceImpl());

  di.registerLazySingleton<PostsSearchRemoteDataSource>(
      () => PostsSearchRemoteDataSourceImpl());
}
