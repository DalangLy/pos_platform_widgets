import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DXModifierLevel<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item,) builder;
  const DXModifierLevel({Key? key, required this.items, required this.builder,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: List.generate(200, (index) => Text('item $index'),),
    );
  }
}
