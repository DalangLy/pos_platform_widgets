import 'package:flutter/material.dart';


class DXChoice extends StatelessWidget {
  final Widget title;
  final List<Widget> children;
  const DXChoice({Key? key, required this.title, required this.children,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        const Divider(color: Colors.transparent,),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              mainAxisExtent: 40,
            ),
            itemCount: children.length,
            itemBuilder: (context, index){
              return children[index];
            },
          ),
        ),
      ],
    );
  }
}
