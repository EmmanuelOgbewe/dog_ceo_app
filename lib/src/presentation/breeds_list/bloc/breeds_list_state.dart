part of 'breeds_list_bloc.dart';

sealed class BreedsListState {}

class InitialBreedsListState implements BreedsListState {
  const InitialBreedsListState();
}

class ContentBreedsListState implements BreedsListState {
  const ContentBreedsListState({
    required this.breeds,
  });

  final Breeds breeds;
}

class LoadingBreedsListState implements BreedsListState {
  const LoadingBreedsListState();
}

class ErrorBreedsListState implements BreedsListState {
  const ErrorBreedsListState();
}
