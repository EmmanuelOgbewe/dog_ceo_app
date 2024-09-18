part of 'breed_details_bloc.dart';

sealed class BreedDetailsState {}

class InitialBreedDetailsState implements BreedDetailsState {
  const InitialBreedDetailsState();
}

class ContentBreedDetailsState implements BreedDetailsState {
  const ContentBreedDetailsState({
    required this.breed,
  });

  final Breed breed; // Use the Breed model here
}

class LoadingBreedDetailsState implements BreedDetailsState {
  const LoadingBreedDetailsState();
}

class ErrorBreedDetailsState implements BreedDetailsState {
  const ErrorBreedDetailsState();
}
