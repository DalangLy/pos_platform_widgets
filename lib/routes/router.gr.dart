// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../home_page.dart' as _i1;
import '../screens/dx_choice_page.dart' as _i7;
import '../screens/dx_loading_dialog_page.dart' as _i2;
import '../screens/dx_modifier_level_page.dart' as _i8;
import '../screens/dx_tab_page.dart' as _i6;
import '../screens/dx_table_order_list_page.dart' as _i5;
import '../screens/dx_table_order_page.dart' as _i4;
import '../screens/dx_table_page.dart' as _i3;
import '../screens/dx_variation_list_page.dart' as _i9;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    DXLoadingDialogRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DXLoadingDialogPage());
    },
    DXTableRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.DXTablePage());
    },
    DXTableOrderRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DXTableOrderPage());
    },
    DXTableOrderListRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.DXTableOrderListPage());
    },
    DXTabRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DXTabPage());
    },
    DXChoiceRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.DXChoicePage());
    },
    DXModifierLevelRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.DXModifierLevelPage());
    },
    DXVariationListRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.DXVariationListPage());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(HomeRoute.name, path: '/', children: [
          _i10.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'dx-loading-dialog',
              fullMatch: true),
          _i10.RouteConfig(DXLoadingDialogRoute.name,
              path: 'dx-loading-dialog', parent: HomeRoute.name),
          _i10.RouteConfig(DXTableRoute.name,
              path: 'dx-table', parent: HomeRoute.name),
          _i10.RouteConfig(DXTableOrderRoute.name,
              path: 'dx-table-order', parent: HomeRoute.name),
          _i10.RouteConfig(DXTableOrderListRoute.name,
              path: 'dx-table-order-list', parent: HomeRoute.name),
          _i10.RouteConfig(DXTabRoute.name,
              path: 'dx-tab', parent: HomeRoute.name),
          _i10.RouteConfig(DXChoiceRoute.name,
              path: 'dx-choice', parent: HomeRoute.name),
          _i10.RouteConfig(DXModifierLevelRoute.name,
              path: 'dx-modifier-level', parent: HomeRoute.name),
          _i10.RouteConfig(DXVariationListRoute.name,
              path: 'dx-variation-list', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.DXLoadingDialogPage]
class DXLoadingDialogRoute extends _i10.PageRouteInfo<void> {
  const DXLoadingDialogRoute()
      : super(DXLoadingDialogRoute.name, path: 'dx-loading-dialog');

  static const String name = 'DXLoadingDialogRoute';
}

/// generated route for
/// [_i3.DXTablePage]
class DXTableRoute extends _i10.PageRouteInfo<void> {
  const DXTableRoute() : super(DXTableRoute.name, path: 'dx-table');

  static const String name = 'DXTableRoute';
}

/// generated route for
/// [_i4.DXTableOrderPage]
class DXTableOrderRoute extends _i10.PageRouteInfo<void> {
  const DXTableOrderRoute()
      : super(DXTableOrderRoute.name, path: 'dx-table-order');

  static const String name = 'DXTableOrderRoute';
}

/// generated route for
/// [_i5.DXTableOrderListPage]
class DXTableOrderListRoute extends _i10.PageRouteInfo<void> {
  const DXTableOrderListRoute()
      : super(DXTableOrderListRoute.name, path: 'dx-table-order-list');

  static const String name = 'DXTableOrderListRoute';
}

/// generated route for
/// [_i6.DXTabPage]
class DXTabRoute extends _i10.PageRouteInfo<void> {
  const DXTabRoute() : super(DXTabRoute.name, path: 'dx-tab');

  static const String name = 'DXTabRoute';
}

/// generated route for
/// [_i7.DXChoicePage]
class DXChoiceRoute extends _i10.PageRouteInfo<void> {
  const DXChoiceRoute() : super(DXChoiceRoute.name, path: 'dx-choice');

  static const String name = 'DXChoiceRoute';
}

/// generated route for
/// [_i8.DXModifierLevelPage]
class DXModifierLevelRoute extends _i10.PageRouteInfo<void> {
  const DXModifierLevelRoute()
      : super(DXModifierLevelRoute.name, path: 'dx-modifier-level');

  static const String name = 'DXModifierLevelRoute';
}

/// generated route for
/// [_i9.DXVariationListPage]
class DXVariationListRoute extends _i10.PageRouteInfo<void> {
  const DXVariationListRoute()
      : super(DXVariationListRoute.name, path: 'dx-variation-list');

  static const String name = 'DXVariationListRoute';
}
