import 'package:flutter/material.dart';

class DXCustomize extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final Widget trail;
  const DXCustomize({Key? key, required this.leading, required this.title, required this.trail,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        leading,
        const VerticalDivider(color: Colors.transparent,),
        title,
        const Spacer(),
        trail,
      ],
    );
  }
}
