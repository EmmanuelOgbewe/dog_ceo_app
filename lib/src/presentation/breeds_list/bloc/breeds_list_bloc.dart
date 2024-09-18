import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/get_breed_list.dart';
import 'package:dog_ceo_take_home/src/navigation/navigator.dart';
import '../../../data/models/breeds.dart';

part 'breeds_list_event.dart';
part 'breeds_list_state.dart';

class BreedsListBloc extends Bloc<BreedsListEvent, BreedsListState> {
  final GetBreedList getBreedList;
  final DogCeoNavigator navigator;

  BreedsListBloc({required this.getBreedList, required this.navigator})
      : super(const InitialBreedsListState()) {
    // Handle loading breeds list
    on<LoadBreedsListEvent>((event, emit) async {
      emit(const LoadingBreedsListState());

      try {
        final breeds =
            await getBreedList(); // Ensure getBreedList returns Breeds model

        emit(ContentBreedsListState(breeds: breeds));
      } catch (e) {
        emit(const ErrorBreedsListState());
      }
    });

    // Handle retrying to load breeds list
    on<RetryBreedsListEvent>((event, emit) async {
      emit(const LoadingBreedsListState());

      try {
        final breeds = await getBreedList(); // Updated to return Breeds model
        emit(ContentBreedsListState(breeds: breeds));
      } catch (e) {
        emit(const ErrorBreedsListState());
      }
    });

    // Handle opening details for a specific breed
    on<OpenDetailsBreedsListEvent>((event, emit) async {
      await navigator.goToBreedDetails(event.breedId);
    });

    add(const LoadBreedsListEvent());
  }
}
