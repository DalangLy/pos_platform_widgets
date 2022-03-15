import 'package:flutter/material.dart';

class DXModifierLevel<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item,) builder;
  const DXModifierLevel({Key? key, required this.items, required this.builder,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      children: items.map<Widget>((item) => builder(context, item,)).toList(),
    );
  }
}
