import '../data_sources/breed_remote_data_source.dart';
import '../../domain/repositories/breed_repository.dart';
import '../models/breeds.dart';
import '../models/breed.dart';

class BreedRepositoryImpl implements BreedRepository {
  final BreedRemoteDataSource remoteDataSource;

  BreedRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Breeds> getBreeds() async {
    return await remoteDataSource.fetchBreeds();
  }

  @override
  Future<Breed> getBreedDetails(String breedId) async {
    return await remoteDataSource
        .fetchBreedDetails(breedId); // Fetch details from the data source
  }
}
