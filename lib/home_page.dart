import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<_NavigationItem> _navigation = const <_NavigationItem>[
    _NavigationItem(title: 'DX Loading Dialog', path: 'dx-loading-dialog'),
    _NavigationItem(title: 'DX Number Pad', path: 'dx-number-pad'),
    _NavigationItem(title: 'DX Cash', path: 'dx-cash'),
    _NavigationItem(title: 'DX Table', path: 'dx-table'),
    _NavigationItem(title: 'DX Table Order', path: 'dx-table-order'),
    _NavigationItem(title: 'DX Table Order List', path: 'dx-table-order-list'),
    _NavigationItem(title: 'DX Tab', path: 'dx-tab'),
    _NavigationItem(title: 'DX Table Info', path: 'dx-table-info'),
    _NavigationItem(title: 'DX Order', path: 'dx-order'),
    _NavigationItem(title: 'DX Container', path: 'dx-container'),
    _NavigationItem(title: 'DX Transfer Item', path: 'dx-transfer-item'),
    _NavigationItem(title: 'DX Select Choice', path: 'dx-select-choice'),
    _NavigationItem(title: 'DX Authorize Step', path: 'dx-authorize-step'),
    _NavigationItem(title: 'DX Choice', path: 'dx-choice'),
    _NavigationItem(title: 'DX Variation List', path: 'dx-variation-list'),
    _NavigationItem(title: 'DX Modifier', path: 'dx-modifier'),
    _NavigationItem(title: 'DX Modifier Level', path: 'dx-modifier-level'),
    _NavigationItem(title: 'DX Customize', path: 'dx-customize'),
    _NavigationItem(title: 'DX Item Detail', path: 'dx-item-detail'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Platform Widgets'),),
      drawer: Drawer(
        child: AnimatedBuilder(
          animation: AutoRouter.of(context),
          builder: (context, child,) {
            final StackRouter _autoRouter = AutoRouter.of(context);
            String path = '';
            if(_autoRouter.currentSegments.length > 1){
              path = AutoRouter.of(context).currentSegments[1].path;
            }
            return ListView.builder(
              itemCount: _navigation.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_navigation[index].title),
                  selected: _navigation[index].path == path,
                  onTap: (){
                    AutoRouter.of(context).pushNamed(_navigation[index].path,);
                  },
                );
              },
            );
          }
        ),
      ),
      body: const AutoRouter(),
    );
  }
}

class _NavigationItem{
  final String title;
  final String path;
  const _NavigationItem({required this.title, required this.path,});
}
