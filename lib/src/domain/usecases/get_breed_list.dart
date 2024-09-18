import '../repositories/breed_repository.dart';
import '../../data/models/breeds.dart';

class GetBreedList {
  final BreedRepository repository;

  GetBreedList(this.repository);

  Future<Breeds> call() async {
    return await repository.getBreeds();
  }
}
