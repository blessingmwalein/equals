// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    KycUpdateRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const KycUpdatePage(),
      );
    },
    ProductListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductListPage(),
      );
    },
    SingleProductRoute.name: (routeData) {
      final args = routeData.argsAs<SingleProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SingleProductPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [KycUpdatePage]
class KycUpdateRoute extends PageRouteInfo<void> {
  const KycUpdateRoute({List<PageRouteInfo>? children})
      : super(
          KycUpdateRoute.name,
          initialChildren: children,
        );

  static const String name = 'KycUpdateRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductListPage]
class ProductListRoute extends PageRouteInfo<void> {
  const ProductListRoute({List<PageRouteInfo>? children})
      : super(
          ProductListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SingleProductPage]
class SingleProductRoute extends PageRouteInfo<SingleProductRouteArgs> {
  SingleProductRoute({
    Key? key,
    required Product product,
    List<PageRouteInfo>? children,
  }) : super(
          SingleProductRoute.name,
          args: SingleProductRouteArgs(
            key: key,
            product: product,
          ),
          initialChildren: children,
        );

  static const String name = 'SingleProductRoute';

  static const PageInfo<SingleProductRouteArgs> page =
      PageInfo<SingleProductRouteArgs>(name);
}

class SingleProductRouteArgs {
  const SingleProductRouteArgs({
    this.key,
    required this.product,
  });

  final Key? key;

  final Product product;

  @override
  String toString() {
    return 'SingleProductRouteArgs{key: $key, product: $product}';
  }
}
