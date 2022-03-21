import 'package:flutter/material.dart';


class DXTableOrderList<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item,) builder;
  final List<Widget>? actions;
  const DXTableOrderList({Key? key, required this.items, required this.builder, this.actions,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0,),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 1,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index){
                  return builder(context, items[index]);
                },
              ),
            ),
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: actions ?? [
                  SizedBox(
                    height: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: const Icon(Icons.chevron_left,),),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: const Icon(Icons.chevron_right,),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}