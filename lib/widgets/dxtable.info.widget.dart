import 'package:flutter/material.dart';

class DXTableInfo extends StatelessWidget {
  final Widget date;
  final Widget time;
  final Widget content;
  final Widget ship;
  final Widget amount;
  const DXTableInfo({Key? key, required this.date, required this.time, required this.content, required this.ship, required this.amount,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            date,
            const Spacer(),
            const Icon(Icons.timer),
            const VerticalDivider(color: Colors.transparent, width: 5,),
            time,
          ],
        ),
        const Divider(color: Colors.transparent,),
        content,
        const Divider(color: Colors.transparent,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Shipped : '),
            ship,
          ],
        ),
        const Divider(color: Colors.transparent, height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Amount : '),
            amount,
          ],
        ),
      ],
    );
  }
}
