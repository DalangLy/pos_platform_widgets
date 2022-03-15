import 'package:flutter/material.dart';

class DXTransferItem<T> extends StatelessWidget {
  final Widget title;
  final List<T> items;
  final Widget Function(BuildContext context, T item,) builder;
  final Widget transfer;
  final List<Widget> actions;
  const DXTransferItem({Key? key, required this.title, required this.items, required this.builder, required this.transfer, required this.actions,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title,
        const Divider(),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(5.0,),
              ),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return builder(context, items[index]);
                },
                separatorBuilder: (context, index){
                  return const Divider();
                },
                itemCount: items.length,
              ),
            ),
          ),
        ),
        const Divider(color: Colors.transparent,),
        transfer,
        _buildActions(),
      ],
    );
  }

  Widget _buildActions(){
    return SizedBox(
      height: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: actions.map<Widget>((action) {
          final int currentIndex = actions.indexOf(action);
          final bool lastIndex = currentIndex >= (actions.length-1);
          if(currentIndex == 0){
            return Padding(padding: const EdgeInsets.only(right: 8.0), child: action,);
          }
          else if(lastIndex){
            return Padding(padding: const EdgeInsets.only(left: 8.0), child: action,);
          }
          else{
            return Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0), child: action,);
          }
        }).toList(),
      ),
    );
  }
}
