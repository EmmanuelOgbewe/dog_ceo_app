import '../repositories/breed_repository.dart';
import '../../data/models/breed.dart';

class GetBreedDetails {
  final BreedRepository repository;

  GetBreedDetails(this.repository);

  Future<Breed> call(String breedId) async {
    return await repository.getBreedDetails(breedId); // Fetch breed details
  }
}
