import 'package:flutter/material.dart';

class DXContainer extends StatelessWidget {
  final Widget header;
  final Widget headerTrail;
  final Widget child;
  const DXContainer({Key? key, required this.header, required this.headerTrail, required this.child,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              header,
              headerTrail,
            ],
          ),
        ),
        const Divider(color: Colors.transparent,),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}
