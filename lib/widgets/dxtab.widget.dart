import 'package:flutter/material.dart';


class DXTab<T> extends StatefulWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item,) builder;
  final Widget? next;
  final Widget? prev;
  const DXTab({Key? key, required this.items, required this.builder, this.next, this.prev,}) : super(key: key);

  @override
  State<DXTab<T>> createState() => _DXTabState<T>();
}

class _DXTabState<T> extends State<DXTab<T>> {
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();

    _controller = ScrollController();
  }
  double _scrolledViewport = 0;
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
            child: widget.prev ?? ElevatedButton(
              onPressed: (){
                if(_controller.position.pixels > _controller.position.minScrollExtent){
                  _scrolledViewport -= _controller.position.extentInside;
                  _controller.animateTo(
                    _scrolledViewport,
                    curve: Curves.linear,
                    duration: const Duration(milliseconds: 500),
                  );
                }
              },
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
                controller:  _controller,
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 5.0,);
                },
                itemCount: widget.items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10.0,),
                    child: SizedBox(
                      width: 90,
                      height: double.infinity,
                      child: widget.builder(context, widget.items[index]),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 10.0,),
          SizedBox(
            height: double.infinity,
            child: widget.next ?? ElevatedButton(
              onPressed: (){
                if(_controller.position.pixels < _controller.position.maxScrollExtent){
                  _scrolledViewport += _controller.position.extentInside;
                  _controller.animateTo(
                    _scrolledViewport,
                    curve: Curves.linear,
                    duration: const Duration(milliseconds: 500),
                  );
                }
              },
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
