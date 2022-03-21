import 'package:flutter/material.dart';

class DXSelectChoice<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item,) builder;
  final Widget action;
  final double itemGap;
  final double spacer;
  final double itemContainerRadius;
  const DXSelectChoice({Key? key, required this.items, required this.builder, required this.action, this.itemGap = 10.0, this.spacer = 10.0, this.itemContainerRadius = 10.0,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(itemContainerRadius,),
              child: Material(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return builder(context, items[index]);
                  },
                  separatorBuilder: (context, index){
                    return Divider(color: Colors.transparent, height: itemGap,);
                  },
                  itemCount: items.length,
                ),
              ),
            ),
          ),
          Divider(color: Colors.transparent, height: spacer,),
          SizedBox(
            width: double.infinity,
            height: 50.0,
            child: action,
          ),
        ],
      ),
    );
  }
}
