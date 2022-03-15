import 'package:flutter/material.dart';


class DXTab<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item,) builder;
  final Widget? next;
  final Widget? prev;
  const DXTab({Key? key, required this.items, required this.builder, this.next, this.prev,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minHeight: 50.0,
        maxHeight: 60.0,
      ),
      child: Row(
        children: [
          SizedBox(
            height: double.infinity,
            child: prev ?? ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: const Icon(Icons.chevron_left,),
            ),
          ),
          const SizedBox(width: 10.0,),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0,),
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 5.0,);
                },
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0,),
                    child: SizedBox(
                      width: 90,
                      height: double.infinity,
                      child: builder(context, items[index]),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 10.0,),
          SizedBox(
            height: double.infinity,
            child: next ?? ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: const Icon(Icons.chevron_right,),
            ),
          ),
        ],
      ),
    );
  }
}
