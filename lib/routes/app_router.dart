import 'package:auto_route/auto_route.dart';
import 'package:equals_online_app/models/product_model.dart';
import 'package:equals_online_app/pages/home_page.dart';
import 'package:equals_online_app/pages/product_list_page.dart';
import 'package:equals_online_app/pages/single_product_page.dart';
import 'package:equals_online_app/pages/update_kyc_page.dart';
import 'package:flutter/material.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: ProductListRoute.page),
        AutoRoute(page: SingleProductRoute.page),
        AutoRoute(page: KycUpdateRoute.page),
      ];
}
