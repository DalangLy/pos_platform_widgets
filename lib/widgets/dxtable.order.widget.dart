import 'package:flutter/material.dart';

class DXTableOrder extends StatelessWidget {
  final Widget title;
  final Widget? icon;
  final Widget? content;
  final Widget? action;
  const DXTableOrder({Key? key, required this.title, this.icon, this.content, this.action,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0,),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title,
                    const Divider(color: Colors.transparent,),
                    content ?? const Text('Empty',),
                  ],
                ),
                icon ?? const Icon(Icons.circle, color: Colors.green,)
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: action ?? ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0.0,)
                ),
                onPressed: (){},
                child: const Text('Select Table',),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
