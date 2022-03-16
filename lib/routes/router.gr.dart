// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i21;
import 'package:flutter/material.dart' as _i22;

import '../home_page.dart' as _i1;
import '../screens/dx_authorize_step_page.dart' as _i14;
import '../screens/dx_cash_page.dart' as _i19;
import '../screens/dx_choice_page.dart' as _i8;
import '../screens/dx_container_page.dart' as _i16;
import '../screens/dx_customize_page.dart' as _i12;
import '../screens/dx_item_detail_page.dart' as _i20;
import '../screens/dx_loading_dialog_page.dart' as _i2;
import '../screens/dx_modifier_level_page.dart' as _i9;
import '../screens/dx_modifier_page.dart' as _i11;
import '../screens/dx_number_pad_page.dart' as _i3;
import '../screens/dx_order_page.dart' as _i17;
import '../screens/dx_select_choice_page.dart' as _i13;
import '../screens/dx_tab_page.dart' as _i7;
import '../screens/dx_table_info_page.dart' as _i18;
import '../screens/dx_table_order_list_page.dart' as _i6;
import '../screens/dx_table_order_page.dart' as _i5;
import '../screens/dx_table_page.dart' as _i4;
import '../screens/dx_transfer_item_page.dart' as _i15;
import '../screens/dx_variation_list_page.dart' as _i10;

class AppRouter extends _i21.RootStackRouter {
  AppRouter([_i22.GlobalKey<_i22.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    DXLoadingDialogRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DXLoadingDialogPage());
    },
    DXNumberPadRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.DXNumberPadPage());
    },
    DXTableRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DXTablePage());
    },
    DXTableOrderRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.DXTableOrderPage());
    },
    DXTableOrderListRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.DXTableOrderListPage());
    },
    DXTabRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.DXTabPage());
    },
    DXChoiceRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.DXChoicePage());
    },
    DXModifierLevelRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.DXModifierLevelPage());
    },
    DXVariationListRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.DXVariationListPage());
    },
    DXModifierRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.DXModifierPage());
    },
    DXCustomizeRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.DXCustomizePage());
    },
    DXSelectChoiceRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.DXSelectChoicePage());
    },
    DXAuthorizeStepRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.DXAuthorizeStepPage());
    },
    DXTransferItemRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.DXTransferItemPage());
    },
    DXContainerRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.DXContainerPage());
    },
    DXOrderRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.DXOrderPage());
    },
    DXTableInfoRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.DXTableInfoPage());
    },
    DXCashRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.DXCashPage());
    },
    DXItemDetailRoute.name: (routeData) {
      return _i21.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.DXItemDetailPage());
    }
  };

  @override
  List<_i21.RouteConfig> get routes => [
        _i21.RouteConfig(HomeRoute.name, path: '/', children: [
          _i21.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'dx-number-pad',
              fullMatch: true),
          _i21.RouteConfig(DXLoadingDialogRoute.name,
              path: 'dx-loading-dialog', parent: HomeRoute.name),
          _i21.RouteConfig(DXNumberPadRoute.name,
              path: 'dx-number-pad', parent: HomeRoute.name),
          _i21.RouteConfig(DXTableRoute.name,
              path: 'dx-table', parent: HomeRoute.name),
          _i21.RouteConfig(DXTableOrderRoute.name,
              path: 'dx-table-order', parent: HomeRoute.name),
          _i21.RouteConfig(DXTableOrderListRoute.name,
              path: 'dx-table-order-list', parent: HomeRoute.name),
          _i21.RouteConfig(DXTabRoute.name,
              path: 'dx-tab', parent: HomeRoute.name),
          _i21.RouteConfig(DXChoiceRoute.name,
              path: 'dx-choice', parent: HomeRoute.name),
          _i21.RouteConfig(DXModifierLevelRoute.name,
              path: 'dx-modifier-level', parent: HomeRoute.name),
          _i21.RouteConfig(DXVariationListRoute.name,
              path: 'dx-variation-list', parent: HomeRoute.name),
          _i21.RouteConfig(DXModifierRoute.name,
              path: 'dx-modifier', parent: HomeRoute.name),
          _i21.RouteConfig(DXCustomizeRoute.name,
              path: 'dx-customize', parent: HomeRoute.name),
          _i21.RouteConfig(DXSelectChoiceRoute.name,
              path: 'dx-select-choice', parent: HomeRoute.name),
          _i21.RouteConfig(DXAuthorizeStepRoute.name,
              path: 'dx-authorize-step', parent: HomeRoute.name),
          _i21.RouteConfig(DXTransferItemRoute.name,
              path: 'dx-transfer-item', parent: HomeRoute.name),
          _i21.RouteConfig(DXContainerRoute.name,
              path: 'dx-container', parent: HomeRoute.name),
          _i21.RouteConfig(DXOrderRoute.name,
              path: 'dx-order', parent: HomeRoute.name),
          _i21.RouteConfig(DXTableInfoRoute.name,
              path: 'dx-table-info', parent: HomeRoute.name),
          _i21.RouteConfig(DXCashRoute.name,
              path: 'dx-cash', parent: HomeRoute.name),
          _i21.RouteConfig(DXItemDetailRoute.name,
              path: 'dx-item-detail', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i21.PageRouteInfo<void> {
  const HomeRoute({List<_i21.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.DXLoadingDialogPage]
class DXLoadingDialogRoute extends _i21.PageRouteInfo<void> {
  const DXLoadingDialogRoute()
      : super(DXLoadingDialogRoute.name, path: 'dx-loading-dialog');

  static const String name = 'DXLoadingDialogRoute';
}

/// generated route for
/// [_i3.DXNumberPadPage]
class DXNumberPadRoute extends _i21.PageRouteInfo<void> {
  const DXNumberPadRoute()
      : super(DXNumberPadRoute.name, path: 'dx-number-pad');

  static const String name = 'DXNumberPadRoute';
}

/// generated route for
/// [_i4.DXTablePage]
class DXTableRoute extends _i21.PageRouteInfo<void> {
  const DXTableRoute() : super(DXTableRoute.name, path: 'dx-table');

  static const String name = 'DXTableRoute';
}

/// generated route for
/// [_i5.DXTableOrderPage]
class DXTableOrderRoute extends _i21.PageRouteInfo<void> {
  const DXTableOrderRoute()
      : super(DXTableOrderRoute.name, path: 'dx-table-order');

  static const String name = 'DXTableOrderRoute';
}

/// generated route for
/// [_i6.DXTableOrderListPage]
class DXTableOrderListRoute extends _i21.PageRouteInfo<void> {
  const DXTableOrderListRoute()
      : super(DXTableOrderListRoute.name, path: 'dx-table-order-list');

  static const String name = 'DXTableOrderListRoute';
}

/// generated route for
/// [_i7.DXTabPage]
class DXTabRoute extends _i21.PageRouteInfo<void> {
  const DXTabRoute() : super(DXTabRoute.name, path: 'dx-tab');

  static const String name = 'DXTabRoute';
}

/// generated route for
/// [_i8.DXChoicePage]
class DXChoiceRoute extends _i21.PageRouteInfo<void> {
  const DXChoiceRoute() : super(DXChoiceRoute.name, path: 'dx-choice');

  static const String name = 'DXChoiceRoute';
}

/// generated route for
/// [_i9.DXModifierLevelPage]
class DXModifierLevelRoute extends _i21.PageRouteInfo<void> {
  const DXModifierLevelRoute()
      : super(DXModifierLevelRoute.name, path: 'dx-modifier-level');

  static const String name = 'DXModifierLevelRoute';
}

/// generated route for
/// [_i10.DXVariationListPage]
class DXVariationListRoute extends _i21.PageRouteInfo<void> {
  const DXVariationListRoute()
      : super(DXVariationListRoute.name, path: 'dx-variation-list');

  static const String name = 'DXVariationListRoute';
}

/// generated route for
/// [_i11.DXModifierPage]
class DXModifierRoute extends _i21.PageRouteInfo<void> {
  const DXModifierRoute() : super(DXModifierRoute.name, path: 'dx-modifier');

  static const String name = 'DXModifierRoute';
}

/// generated route for
/// [_i12.DXCustomizePage]
class DXCustomizeRoute extends _i21.PageRouteInfo<void> {
  const DXCustomizeRoute() : super(DXCustomizeRoute.name, path: 'dx-customize');

  static const String name = 'DXCustomizeRoute';
}

/// generated route for
/// [_i13.DXSelectChoicePage]
class DXSelectChoiceRoute extends _i21.PageRouteInfo<void> {
  const DXSelectChoiceRoute()
      : super(DXSelectChoiceRoute.name, path: 'dx-select-choice');

  static const String name = 'DXSelectChoiceRoute';
}

/// generated route for
/// [_i14.DXAuthorizeStepPage]
class DXAuthorizeStepRoute extends _i21.PageRouteInfo<void> {
  const DXAuthorizeStepRoute()
      : super(DXAuthorizeStepRoute.name, path: 'dx-authorize-step');

  static const String name = 'DXAuthorizeStepRoute';
}

/// generated route for
/// [_i15.DXTransferItemPage]
class DXTransferItemRoute extends _i21.PageRouteInfo<void> {
  const DXTransferItemRoute()
      : super(DXTransferItemRoute.name, path: 'dx-transfer-item');

  static const String name = 'DXTransferItemRoute';
}

/// generated route for
/// [_i16.DXContainerPage]
class DXContainerRoute extends _i21.PageRouteInfo<void> {
  const DXContainerRoute() : super(DXContainerRoute.name, path: 'dx-container');

  static const String name = 'DXContainerRoute';
}

/// generated route for
/// [_i17.DXOrderPage]
class DXOrderRoute extends _i21.PageRouteInfo<void> {
  const DXOrderRoute() : super(DXOrderRoute.name, path: 'dx-order');

  static const String name = 'DXOrderRoute';
}

/// generated route for
/// [_i18.DXTableInfoPage]
class DXTableInfoRoute extends _i21.PageRouteInfo<void> {
  const DXTableInfoRoute()
      : super(DXTableInfoRoute.name, path: 'dx-table-info');

  static const String name = 'DXTableInfoRoute';
}

/// generated route for
/// [_i19.DXCashPage]
class DXCashRoute extends _i21.PageRouteInfo<void> {
  const DXCashRoute() : super(DXCashRoute.name, path: 'dx-cash');

  static const String name = 'DXCashRoute';
}

/// generated route for
/// [_i20.DXItemDetailPage]
class DXItemDetailRoute extends _i21.PageRouteInfo<void> {
  const DXItemDetailRoute()
      : super(DXItemDetailRoute.name, path: 'dx-item-detail');

  static const String name = 'DXItemDetailRoute';
}
