import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dog_ceo_take_home/src/core/di/di_initializer.dart';
import 'package:dog_ceo_take_home/src/data/models/breed.dart';
import 'package:dog_ceo_take_home/src/presentation/breed_details/bloc/breed_details_bloc.dart';
import 'package:dog_ceo_take_home/src/presentation/widgets/page_content_error.dart';
import 'package:dog_ceo_take_home/src/presentation/widgets/page_content_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class BreedDetailsPage extends StatelessWidget {
  const BreedDetailsPage({
    super.key,
    @pathParam required this.breedId,
  });

  final String breedId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl<BreedDetailsBloc>(param1: breedId),
        child: BlocBuilder<BreedDetailsBloc, BreedDetailsState>(
          builder: (context, state) => switch (state) {
            InitialBreedDetailsState() => const SizedBox(),
            LoadingBreedDetailsState() => const PageContentLoading(),
            ContentBreedDetailsState() =>
              BreedDetailsContent(breedId: breedId, breed: state.breed),
            ErrorBreedDetailsState() => PageContentError(
                onRetry: () => context
                    .read<BreedDetailsBloc>()
                    .add(const RetryBreedDetailsEvent()), // No breedId here
              ),
          },
        ),
      ),
    );
  }
}

class BreedDetailsContent extends StatelessWidget {
  const BreedDetailsContent(
      {super.key, required this.breed, required this.breedId});

  final Breed breed;
  final String breedId;

  @override
  Widget build(BuildContext context) {
    final breedDetail = breed.message[0];
    return Scaffold(
        body: Stack(
      children: [
        CachedNetworkImage(
          imageUrl: breedDetail,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
            size: 60,
            color: Colors.red,
          ),
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(value: downloadProgress.progress),
        ),
        Container(
          color: Colors.black87,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CachedNetworkImage(
                      imageUrl: breedDetail,
                      errorWidget: (context, url, error) => const Icon(
                        Icons.error,
                        size: 60,
                        color: Colors.red,
                      ),
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              CircularProgressIndicator(
                                  value: downloadProgress.progress),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                breedId.toUpperCase(),
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    letterSpacing: 10,
                    color: Colors.white,
                    shadows: const [
                      Shadow(blurRadius: 5, color: Colors.black26)
                    ]),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 40, left: 22),
          child: BackButton(
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
