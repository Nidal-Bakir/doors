import 'package:doors/core/features/subscription/data/offered_subscription_plan_data_source/offered_subscription_plan_remote_data_source.dart';
import 'package:doors/core/features/subscription/data/subscription_remote_data_source/subscription_remote_data_source.dart';
import 'package:doors/core/features/subscription/presentation/managers/offered_subscription_plan_bloc/offered_subscription_plans_bloc.dart';
import 'package:doors/core/features/subscription/presentation/managers/subscription_bloc/subscription_bloc.dart';
import 'package:doors/core/features/subscription/repository/offered_subscription_plan_repository.dart';
import 'package:doors/core/features/subscription/repository/subscription_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void subscriptionInit() {
  // blocs
  di.registerFactory<OfferedSubscriptionPlansBloc>(
      () => OfferedSubscriptionPlansBloc(di.get()));

  di.registerFactory<SubscriptionBloc>(() => SubscriptionBloc(di.get()));

  // repositories
  di.registerLazySingleton<OfferedSubscriptionPlanRepository>(
      () => OfferedSubscriptionPlanRepository(di.get()));

  di.registerLazySingleton<SubscriptionRepository>(
      () => SubscriptionRepository(di.get()));

  // data sources
  di.registerLazySingleton<OfferedSubscriptionPlanRemoteDataSource>(
      () => OfferedSubscriptionPlanRemoteDataSourceImpl());

  di.registerLazySingleton<SubscriptionRemoteDataSource>(
      () => SubscriptionRemoteDataSourceImpl());
}
