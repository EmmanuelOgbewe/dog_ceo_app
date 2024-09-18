import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:dog_ceo_take_home/src/presentation/breed_details/breed_details_page.dart';
import 'package:dog_ceo_take_home/src/presentation/breeds_list/breeds_list_page.dart';

part 'router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class DogCeoRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: BreedsListRoute.page,
          path: '/breeds',
          initial: true,
        ),
        AutoRoute(
          page: BreedDetailsRoute.page,
          path: '/breedDetail/:breedId',
        ),
      ];
}
