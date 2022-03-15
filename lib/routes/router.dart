import 'package:auto_route/auto_route.dart';
import 'package:post_platform_widgets/home_page.dart';
import 'package:post_platform_widgets/screens/dx_authorize_step_page.dart';
import 'package:post_platform_widgets/screens/dx_choice_page.dart';
import 'package:post_platform_widgets/screens/dx_container_page.dart';
import 'package:post_platform_widgets/screens/dx_customize_page.dart';
import 'package:post_platform_widgets/screens/dx_loading_dialog_page.dart';
import 'package:post_platform_widgets/screens/dx_modifier_level_page.dart';
import 'package:post_platform_widgets/screens/dx_modifier_page.dart';
import 'package:post_platform_widgets/screens/dx_order_page.dart';
import 'package:post_platform_widgets/screens/dx_select_choice_page.dart';
import 'package:post_platform_widgets/screens/dx_tab_page.dart';
import 'package:post_platform_widgets/screens/dx_table_order_page.dart';
import 'package:post_platform_widgets/screens/dx_table_page.dart';
import 'package:post_platform_widgets/screens/dx_transfer_item_page.dart';
import 'package:post_platform_widgets/screens/dx_variation_list_page.dart';

import '../screens/dx_table_order_list_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      initial: true,
      children: <AutoRoute>[
        AutoRoute(
          path: 'dx-loading-dialog',
          page: DXLoadingDialogPage,
          initial: true,
        ),
        AutoRoute(
          path: 'dx-table',
          page: DXTablePage,
        ),
        AutoRoute(
          path: 'dx-table-order',
          page: DXTableOrderPage,
        ),
        AutoRoute(
          path: 'dx-table-order-list',
          page: DXTableOrderListPage,
        ),
        AutoRoute(
          path: 'dx-tab',
          page: DXTabPage,
        ),
        AutoRoute(
          path: 'dx-choice',
          page: DXChoicePage,
        ),
        AutoRoute(
          path: 'dx-modifier-level',
          page: DXModifierLevelPage,
        ),
        AutoRoute(
          path: 'dx-variation-list',
          page: DXVariationListPage,
        ),
        AutoRoute(
          path: 'dx-modifier',
          page: DXModifierPage,
        ),
        AutoRoute(
          path: 'dx-customize',
          page: DXCustomizePage,
        ),
        AutoRoute(
          path: 'dx-select-choice',
          page: DXSelectChoicePage,
        ),
        AutoRoute(
          path: 'dx-authorize-step',
          page: DXAuthorizeStepPage,
        ),
        AutoRoute(
          path: 'dx-transfer-item',
          page: DXTransferItemPage,
        ),
        AutoRoute(
          path: 'dx-container',
          page: DXContainerPage,
        ),
        AutoRoute(
          path: 'dx-order',
          page: DXOrderPage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}