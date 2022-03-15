import 'package:flutter/material.dart';


class DXChoice extends StatelessWidget {
  final Widget title;
  final List<Widget> children;
  const DXChoice({Key? key, required this.title, required this.children,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 200,
        maxWidth: 300,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
        ),
      ),
    );
  }
}
