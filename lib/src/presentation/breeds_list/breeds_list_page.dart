import 'package:auto_route/auto_route.dart';
import 'package:dog_ceo_take_home/app_theme.dart';
import 'package:dog_ceo_take_home/src/core/di/di_initializer.dart';
import 'package:dog_ceo_take_home/src/data/models/breeds.dart';
import 'package:dog_ceo_take_home/src/presentation/breeds_list/bloc/breeds_list_bloc.dart';
import 'package:dog_ceo_take_home/src/constants/text_constants.dart'
    show appActionText, appTitle, dogLogo, dogTwo;
import 'package:dog_ceo_take_home/src/presentation/widgets/page_content_error.dart';
import 'package:dog_ceo_take_home/src/presentation/widgets/page_content_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class BreedsListPage extends StatelessWidget {
  const BreedsListPage({
    super.key,
    @queryParam this.launchId,
  });

  final String? launchId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle),
      ),
      body: BlocProvider(
        create: (context) => sl<BreedsListBloc>(param1: launchId),
        child: BlocBuilder<BreedsListBloc, BreedsListState>(
          builder: (context, state) => switch (state) {
            InitialBreedsListState() => const SizedBox(),
            LoadingBreedsListState() => const PageContentLoading(),
            ContentBreedsListState() => BreedsListContent(breeds: state.breeds),
            ErrorBreedsListState() => PageContentError(
                onRetry: () => context
                    .read<BreedsListBloc>()
                    .add(const RetryBreedsListEvent()),
              ),
          },
        ),
      ),
    );
  }
}

class BreedsListContent extends StatelessWidget {
  const BreedsListContent({
    super.key,
    required this.breeds,
  });

  final Breeds breeds;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getGreeting(),
                    style: GoogleFonts.nunito(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const Text(appActionText),
                ],
              ),
              const Spacer(),
              Image.asset(
                dogTwo,
                height: 100,
              )
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: AnimationLimiter(
              child: ListView.separated(
                itemCount: breeds.message.keys.length,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                itemBuilder: (context, index) {
                  final breed = breeds.message.keys.toList()[index];
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 375),
                    child: SlideAnimation(
                      verticalOffset: 50.0,
                      child: FadeInAnimation(
                        child: InkWell(
                          onTap: () => context
                              .read<BreedsListBloc>()
                              .add(OpenDetailsBreedsListEvent(breed)),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 5,
                                    offset: Offset(0, 2)),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(breed.toUpperCase()),
                                Image.asset(
                                  dogLogo,
                                  color: Themes.kBeigeAccentColor,
                                  height: 45,
                                ),
                              ],
                            ),
                            // tileColor:Colors.red,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getGreeting() {
    final now = DateTime.now();
    final hour = now.hour;

    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 19) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }
}
