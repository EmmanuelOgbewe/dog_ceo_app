import 'package:dio/dio.dart';
import '../models/breeds.dart';
import '../models/breed.dart';

abstract class BreedRemoteDataSource {
  Future<Breeds> fetchBreeds();
  Future<Breed> fetchBreedDetails(String breedId);
}

class BreedRemoteDataSourceImpl implements BreedRemoteDataSource {
  final Dio dio;

  BreedRemoteDataSourceImpl({required this.dio});

  @override
  Future<Breeds> fetchBreeds() async {
    try {
      final response = await dio.get('https://dog.ceo/api/breeds/list/all');
      if (response.statusCode == 200) {
        return Breeds.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch breeds');
      }
    } catch (error) {
      throw Exception('Error fetching breeds: $error');
    }
  }

  @override
  Future<Breed> fetchBreedDetails(String breedId) async {
    // Assuming the details are available at this endpoint
    final response = await dio.get('https://dog.ceo/api/breed/$breedId/images');
    return Breed.fromJson(response.data); // Map the response to the Breed model
  }
}
