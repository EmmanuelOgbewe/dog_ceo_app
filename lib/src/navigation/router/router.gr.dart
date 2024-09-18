// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [BreedDetailsPage]
class BreedDetailsRoute extends PageRouteInfo<BreedDetailsRouteArgs> {
  BreedDetailsRoute({
    Key? key,
    required String breedId,
    List<PageRouteInfo>? children,
  }) : super(
          BreedDetailsRoute.name,
          args: BreedDetailsRouteArgs(
            key: key,
            breedId: breedId,
          ),
          rawPathParams: {'breedId': breedId},
          initialChildren: children,
        );

  static const String name = 'BreedDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BreedDetailsRouteArgs>(
          orElse: () =>
              BreedDetailsRouteArgs(breedId: pathParams.getString('breedId')));
      return BreedDetailsPage(
        key: args.key,
        breedId: args.breedId,
      );
    },
  );
}

class BreedDetailsRouteArgs {
  const BreedDetailsRouteArgs({
    this.key,
    required this.breedId,
  });

  final Key? key;

  final String breedId;

  @override
  String toString() {
    return 'BreedDetailsRouteArgs{key: $key, breedId: $breedId}';
  }
}

/// generated route for
/// [BreedsListPage]
class BreedsListRoute extends PageRouteInfo<BreedsListRouteArgs> {
  BreedsListRoute({
    Key? key,
    String? launchId,
    List<PageRouteInfo>? children,
  }) : super(
          BreedsListRoute.name,
          args: BreedsListRouteArgs(
            key: key,
            launchId: launchId,
          ),
          rawQueryParams: {'launchId': launchId},
          initialChildren: children,
        );

  static const String name = 'BreedsListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final queryParams = data.queryParams;
      final args = data.argsAs<BreedsListRouteArgs>(
          orElse: () =>
              BreedsListRouteArgs(launchId: queryParams.optString('launchId')));
      return BreedsListPage(
        key: args.key,
        launchId: args.launchId,
      );
    },
  );
}

class BreedsListRouteArgs {
  const BreedsListRouteArgs({
    this.key,
    this.launchId,
  });

  final Key? key;

  final String? launchId;

  @override
  String toString() {
    return 'BreedsListRouteArgs{key: $key, launchId: $launchId}';
  }
}
