part of 'breed_details_bloc.dart';

sealed class BreedDetailsEvent {}

class LoadBreedDetailsEvent implements BreedDetailsEvent {
  const LoadBreedDetailsEvent(this.breedId);

  final String breedId; // Pass the breed ID for loading specific breed details
}

class RetryBreedDetailsEvent implements BreedDetailsEvent {
  const RetryBreedDetailsEvent();
}
