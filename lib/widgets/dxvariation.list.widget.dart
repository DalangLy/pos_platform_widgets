import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxchoice.widget.dart';

class DXVariationList extends StatelessWidget {
  final Widget title;
  final List<DXChoice> children;
  const DXVariationList({Key? key, required this.title, required this.children,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      itemCount: children.length,
      itemBuilder: (BuildContext context, int index) {
        return children[index];
      },
    );
  }
}
