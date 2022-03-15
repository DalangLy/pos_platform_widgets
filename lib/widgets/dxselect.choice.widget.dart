import 'package:flutter/material.dart';

class DXSelectChoice<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item,) builder;
  final Widget action;
  const DXSelectChoice({Key? key, required this.items, required this.builder, required this.action,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return builder(context, items[index]);
            },
            separatorBuilder: (context, index){
              return const Divider(color: Colors.transparent,);
            },
            itemCount: items.length,
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 50.0,
          child: action,
        ),
      ],
    );
  }
}
