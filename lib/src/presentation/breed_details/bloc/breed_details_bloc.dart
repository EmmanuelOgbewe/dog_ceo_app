import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/breed.dart';
import '../../../domain/usecases/get_breed_details.dart'; // Import the use case

part 'breed_details_event.dart';
part 'breed_details_state.dart';

class BreedDetailsBloc extends Bloc<BreedDetailsEvent, BreedDetailsState> {
  final GetBreedDetails getBreedDetails;

  BreedDetailsBloc({required this.getBreedDetails, required String breedId})
      : super(const InitialBreedDetailsState()) {
    // Handle loading breed details
    on<LoadBreedDetailsEvent>((event, emit) async {
      emit(const LoadingBreedDetailsState());

      try {
        final breedDetails =
            await getBreedDetails(event.breedId); // Fetch breed details

        emit(ContentBreedDetailsState(breed: breedDetails));
      } catch (_) {
        emit(const ErrorBreedDetailsState());
      }
    });

    // Handle retrying to load breed details
    on<RetryBreedDetailsEvent>((event, emit) async {
      emit(const LoadingBreedDetailsState());

      try {
        final breedDetails =
            await getBreedDetails(breedId); // Retry fetching breed details

        emit(ContentBreedDetailsState(breed: breedDetails));
      } catch (_) {
        emit(const ErrorBreedDetailsState());
      }
    });

    add(LoadBreedDetailsEvent(breedId));
  }
}
