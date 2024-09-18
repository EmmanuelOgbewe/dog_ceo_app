import '../../data/models/breeds.dart';
import '../../data/models/breed.dart';

abstract class BreedRepository {
  Future<Breeds> getBreeds();
  Future<Breed> getBreedDetails(String breedId);
}
