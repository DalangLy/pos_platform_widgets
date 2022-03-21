import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxcustom.paginated.grid.view.widget.dart';


class DXTableOrderList<T> extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index,) builder;
  final List<Widget>? actions;
  const DXTableOrderList({Key? key, required this.itemCount, required this.builder, this.actions,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DXCustomPaginatedGridView(itemCount: itemCount, builder: builder);
  }
}