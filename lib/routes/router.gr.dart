// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

import '../home_page.dart' as _i1;
import '../screens/dx_authorize_step_page.dart' as _i13;
import '../screens/dx_choice_page.dart' as _i7;
import '../screens/dx_container_page.dart' as _i15;
import '../screens/dx_customize_page.dart' as _i11;
import '../screens/dx_loading_dialog_page.dart' as _i2;
import '../screens/dx_modifier_level_page.dart' as _i8;
import '../screens/dx_modifier_page.dart' as _i10;
import '../screens/dx_select_choice_page.dart' as _i12;
import '../screens/dx_tab_page.dart' as _i6;
import '../screens/dx_table_order_list_page.dart' as _i5;
import '../screens/dx_table_order_page.dart' as _i4;
import '../screens/dx_table_page.dart' as _i3;
import '../screens/dx_transfer_item_page.dart' as _i14;
import '../screens/dx_variation_list_page.dart' as _i9;

class AppRouter extends _i16.RootStackRouter {
  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    DXLoadingDialogRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DXLoadingDialogPage());
    },
    DXTableRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.DXTablePage());
    },
    DXTableOrderRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DXTableOrderPage());
    },
    DXTableOrderListRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.DXTableOrderListPage());
    },
    DXTabRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DXTabPage());
    },
    DXChoiceRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.DXChoicePage());
    },
    DXModifierLevelRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.DXModifierLevelPage());
    },
    DXVariationListRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.DXVariationListPage());
    },
    DXModifierRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.DXModifierPage());
    },
    DXCustomizeRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.DXCustomizePage());
    },
    DXSelectChoiceRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.DXSelectChoicePage());
    },
    DXAuthorizeStepRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.DXAuthorizeStepPage());
    },
    DXTransferItemRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.DXTransferItemPage());
    },
    DXContainerRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.DXContainerPage());
    }
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(HomeRoute.name, path: '/', children: [
          _i16.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'dx-loading-dialog',
              fullMatch: true),
          _i16.RouteConfig(DXLoadingDialogRoute.name,
              path: 'dx-loading-dialog', parent: HomeRoute.name),
          _i16.RouteConfig(DXTableRoute.name,
              path: 'dx-table', parent: HomeRoute.name),
          _i16.RouteConfig(DXTableOrderRoute.name,
              path: 'dx-table-order', parent: HomeRoute.name),
          _i16.RouteConfig(DXTableOrderListRoute.name,
              path: 'dx-table-order-list', parent: HomeRoute.name),
          _i16.RouteConfig(DXTabRoute.name,
              path: 'dx-tab', parent: HomeRoute.name),
          _i16.RouteConfig(DXChoiceRoute.name,
              path: 'dx-choice', parent: HomeRoute.name),
          _i16.RouteConfig(DXModifierLevelRoute.name,
              path: 'dx-modifier-level', parent: HomeRoute.name),
          _i16.RouteConfig(DXVariationListRoute.name,
              path: 'dx-variation-list', parent: HomeRoute.name),
          _i16.RouteConfig(DXModifierRoute.name,
              path: 'dx-modifier', parent: HomeRoute.name),
          _i16.RouteConfig(DXCustomizeRoute.name,
              path: 'dx-customize', parent: HomeRoute.name),
          _i16.RouteConfig(DXSelectChoiceRoute.name,
              path: 'dx-select-choice', parent: HomeRoute.name),
          _i16.RouteConfig(DXAuthorizeStepRoute.name,
              path: 'dx-authorize-step', parent: HomeRoute.name),
          _i16.RouteConfig(DXTransferItemRoute.name,
              path: 'dx-transfer-item', parent: HomeRoute.name),
          _i16.RouteConfig(DXContainerRoute.name,
              path: 'dx-container', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.DXLoadingDialogPage]
class DXLoadingDialogRoute extends _i16.PageRouteInfo<void> {
  const DXLoadingDialogRoute()
      : super(DXLoadingDialogRoute.name, path: 'dx-loading-dialog');

  static const String name = 'DXLoadingDialogRoute';
}

/// generated route for
/// [_i3.DXTablePage]
class DXTableRoute extends _i16.PageRouteInfo<void> {
  const DXTableRoute() : super(DXTableRoute.name, path: 'dx-table');

  static const String name = 'DXTableRoute';
}

/// generated route for
/// [_i4.DXTableOrderPage]
class DXTableOrderRoute extends _i16.PageRouteInfo<void> {
  const DXTableOrderRoute()
      : super(DXTableOrderRoute.name, path: 'dx-table-order');

  static const String name = 'DXTableOrderRoute';
}

/// generated route for
/// [_i5.DXTableOrderListPage]
class DXTableOrderListRoute extends _i16.PageRouteInfo<void> {
  const DXTableOrderListRoute()
      : super(DXTableOrderListRoute.name, path: 'dx-table-order-list');

  static const String name = 'DXTableOrderListRoute';
}

/// generated route for
/// [_i6.DXTabPage]
class DXTabRoute extends _i16.PageRouteInfo<void> {
  const DXTabRoute() : super(DXTabRoute.name, path: 'dx-tab');

  static const String name = 'DXTabRoute';
}

/// generated route for
/// [_i7.DXChoicePage]
class DXChoiceRoute extends _i16.PageRouteInfo<void> {
  const DXChoiceRoute() : super(DXChoiceRoute.name, path: 'dx-choice');

  static const String name = 'DXChoiceRoute';
}

/// generated route for
/// [_i8.DXModifierLevelPage]
class DXModifierLevelRoute extends _i16.PageRouteInfo<void> {
  const DXModifierLevelRoute()
      : super(DXModifierLevelRoute.name, path: 'dx-modifier-level');

  static const String name = 'DXModifierLevelRoute';
}

/// generated route for
/// [_i9.DXVariationListPage]
class DXVariationListRoute extends _i16.PageRouteInfo<void> {
  const DXVariationListRoute()
      : super(DXVariationListRoute.name, path: 'dx-variation-list');

  static const String name = 'DXVariationListRoute';
}

/// generated route for
/// [_i10.DXModifierPage]
class DXModifierRoute extends _i16.PageRouteInfo<void> {
  const DXModifierRoute() : super(DXModifierRoute.name, path: 'dx-modifier');

  static const String name = 'DXModifierRoute';
}

/// generated route for
/// [_i11.DXCustomizePage]
class DXCustomizeRoute extends _i16.PageRouteInfo<void> {
  const DXCustomizeRoute() : super(DXCustomizeRoute.name, path: 'dx-customize');

  static const String name = 'DXCustomizeRoute';
}

/// generated route for
/// [_i12.DXSelectChoicePage]
class DXSelectChoiceRoute extends _i16.PageRouteInfo<void> {
  const DXSelectChoiceRoute()
      : super(DXSelectChoiceRoute.name, path: 'dx-select-choice');

  static const String name = 'DXSelectChoiceRoute';
}

/// generated route for
/// [_i13.DXAuthorizeStepPage]
class DXAuthorizeStepRoute extends _i16.PageRouteInfo<void> {
  const DXAuthorizeStepRoute()
      : super(DXAuthorizeStepRoute.name, path: 'dx-authorize-step');

  static const String name = 'DXAuthorizeStepRoute';
}

/// generated route for
/// [_i14.DXTransferItemPage]
class DXTransferItemRoute extends _i16.PageRouteInfo<void> {
  const DXTransferItemRoute()
      : super(DXTransferItemRoute.name, path: 'dx-transfer-item');

  static const String name = 'DXTransferItemRoute';
}

/// generated route for
/// [_i15.DXContainerPage]
class DXContainerRoute extends _i16.PageRouteInfo<void> {
  const DXContainerRoute() : super(DXContainerRoute.name, path: 'dx-container');

  static const String name = 'DXContainerRoute';
}
