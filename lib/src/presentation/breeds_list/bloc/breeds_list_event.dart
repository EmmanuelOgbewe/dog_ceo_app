part of 'breeds_list_bloc.dart';

sealed class BreedsListEvent {}

class LoadBreedsListEvent implements BreedsListEvent {
  const LoadBreedsListEvent();
}

class RetryBreedsListEvent implements BreedsListEvent {
  const RetryBreedsListEvent();
}

class OpenDetailsBreedsListEvent implements BreedsListEvent {
  const OpenDetailsBreedsListEvent(this.breedId);

  final String breedId;
}
