import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../../data/repositories/breed_repository_impl.dart';
import '../../data/data_sources/breed_remote_data_source.dart';
import '../../domain/repositories/breed_repository.dart';
import '../../domain/usecases/get_breed_list.dart';
import '../../domain/usecases/get_breed_details.dart';
import '../../presentation/breeds_list/bloc/breeds_list_bloc.dart';
import '../../presentation/breed_details/bloc/breed_details_bloc.dart';
import '../../navigation/navigator.dart';
import '../../navigation/router/router.dart';

final sl = GetIt.instance;

void init() {
  // Register DogCeoRouter as a lazy singleton
  sl.registerLazySingleton<DogCeoRouter>(() => DogCeoRouter());

  // Register Dio for API requests
  sl.registerLazySingleton<Dio>(() => Dio());

  // Data sources
  sl.registerLazySingleton<BreedRemoteDataSource>(
      () => BreedRemoteDataSourceImpl(dio: sl()));

  // Repositories
  sl.registerLazySingleton<BreedRepository>(
      () => BreedRepositoryImpl(remoteDataSource: sl()));

  // Use cases
  sl.registerLazySingleton<GetBreedList>(() => GetBreedList(sl()));
  sl.registerLazySingleton<GetBreedDetails>(() => GetBreedDetails(sl()));

  // BLoCs
  sl.registerFactory<DogCeoNavigator>(
      () => DogCeoNavigator(sl<DogCeoRouter>()));

  sl.registerFactory<BreedsListBloc>(
      () => BreedsListBloc(getBreedList: sl(), navigator: sl()));

  sl.registerFactoryParam<BreedDetailsBloc, String, void>(
    (breedId, _) => BreedDetailsBloc(
        getBreedDetails: sl<GetBreedDetails>(), breedId: breedId),
  );
}
