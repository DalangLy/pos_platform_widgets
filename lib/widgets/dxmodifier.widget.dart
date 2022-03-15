import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxchoice.widget.dart';

class DXModifier extends StatefulWidget {
  final Widget title;
  final List<DXChoice> children;
  final Function(int index,)? onChange;
  final int index;
  const DXModifier({Key? key, required this.title, required this.children, this.onChange, required this.index,}) : super(key: key);

  @override
  State<DXModifier> createState() => _DXModifierState();
}

class _DXModifierState extends State<DXModifier>{
  late int _currentIndex;

  @override
  void initState() {
    super.initState();

    _currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.title,
        const Divider(color: Colors.transparent,),
        Wrap(
          spacing: 8.0, // gap between adjacent chips
          runSpacing: 4.0, // gap between lines
          children: widget.children.map<Widget>((e) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  _currentIndex = widget.children.indexOf(e);
                  if(widget.onChange != null){
                    widget.onChange!(_currentIndex);
                  }
                });
              },
              child: Chip(
                label: e.title,
                backgroundColor: _currentIndex == widget.children.indexOf(e) ? Colors.green : null,
              ),
            );
          }).toList(),
        ),
        const Divider(color: Colors.transparent,),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              mainAxisExtent: 40,
            ),
            itemCount: widget.children.elementAt(_currentIndex).children.length,
            itemBuilder: (context, index){
              return widget.children.elementAt(_currentIndex).children[index];
            },
          ),
        ),
      ],
    );
  }
}
