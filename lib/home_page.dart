import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Platform Widgets'),),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('DX Loading Dialog'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-loading-dialog');
              },
            ),
            ListTile(
              title: const Text('DX Table'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-table');
              },
            ),
            ListTile(
              title: const Text('DX Table Order'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-table-order');
              },
            ),
            ListTile(
              title: const Text('DX Table Order List'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-table-order-list');
              },
            ),
            ListTile(
              title: const Text('DX Tab'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-tab');
              },
            ),
            ListTile(
              title: const Text('DX Table Info'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-table-info');
              },
            ),
            ListTile(
              title: const Text('DX Order'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-order');
              },
            ),
            ListTile(
              title: const Text('DX Container'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-container');
              },
            ),
            ListTile(
              title: const Text('DX Transfer Item'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-transfer-item');
              },
            ),
            ListTile(
              title: const Text('DX Select Choice'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-select-choice');
              },
            ),
            ListTile(
              title: const Text('DX Authorize Step'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-authorize-step');
              },
            ),
            ListTile(
              title: const Text('DX Choice'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-choice');
              },
            ),
            ListTile(
              title: const Text('DX Variation List'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-variation-list');
              },
            ),
            ListTile(
              title: const Text('DX Modifier'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-modifier');
              },
            ),
            ListTile(
              title: const Text('DX Modifier Level'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-modifier-level');
              },
            ),
            ListTile(
              title: const Text('DX Customize'),
              onTap: (){
                AutoRouter.of(context).pushNamed('dx-customize');
              },
            ),
          ],
        ),
      ),
      body: const AutoRouter(),
    );
  }
}
