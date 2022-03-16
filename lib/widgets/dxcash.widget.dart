import 'package:flutter/material.dart';

class DXCash extends StatelessWidget {
  final Widget title;
  final Widget note;
  final Widget numberPad;
  const DXCash({Key? key, required this.title, required this.note, required this.numberPad,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        const Divider(),
        note,
        const Divider(color: Colors.transparent,),
        Flexible(child: numberPad,),
      ],
    );
  }
}
