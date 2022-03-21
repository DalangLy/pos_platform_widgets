import 'package:flutter/material.dart';

class DXCustomPaginatedGridView extends StatefulWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index,) builder;
  final double gap;
  const DXCustomPaginatedGridView({Key? key, required this.itemCount, required this.builder, this.gap = 10.0,}) : super(key: key);

  @override
  State<DXCustomPaginatedGridView> createState() => _DXCustomPaginatedGridViewState();
}

class _DXCustomPaginatedGridViewState extends State<DXCustomPaginatedGridView> {

  int _crossAxisCount = 4;
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();

    _controller = ScrollController();

    _controller.addListener(() {
      _scrolledPos = _controller.position.pixels;
    });
  }

  double _scrolledPos = 0;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
          builder: (context, constraint) {
            return Column(
              children: [
                Expanded(
                  child: _buildGridView(constraint),
                ),
                _buildControls(constraint),
              ],
            );
          }
      ),
    );
  }

  Widget _buildGridView(BoxConstraints constraint){
    if(constraint.maxWidth >= 960){
      _crossAxisCount = 5;
    }
    else{
      _crossAxisCount = 4;
    }
    return GridView.builder(
      controller: _controller,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _crossAxisCount,
        crossAxisSpacing: widget.gap,
        mainAxisSpacing: widget.gap,
      ),
      itemCount: widget.itemCount,
      itemBuilder: (context, index){
        return widget.builder(context, index,);
      },
    );
  }

  Widget _buildControls(BoxConstraints constraints){
    final double eachItemWidth = constraints.maxWidth/_crossAxisCount;
    final rowsCount = (widget.itemCount / _crossAxisCount).ceil();
    if(constraints.maxHeight / eachItemWidth < rowsCount){
      return Padding(
        padding: const EdgeInsets.only(top: 8.0,),
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    _scrollReverse();
                  },
                  child: const Icon(Icons.chevron_left,),
                ),
              ),
              const VerticalDivider(color: Colors.transparent,),
              SizedBox(
                height: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    _scrollForward();
                  },
                  child: const Icon(Icons.chevron_right,),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return const SizedBox();
  }

  void _scrollReverse(){
    if(_scrolledPos > _controller.position.minScrollExtent){
      _scrolledPos -= _controller.position.extentInside;
      _scrollAnim();
    }
  }
  void _scrollForward(){
    if(_scrolledPos < _controller.position.maxScrollExtent){
      _scrolledPos += _controller.position.extentInside;
      _scrollAnim();
    }
  }
  void _scrollAnim(){
    _controller.animateTo(_scrolledPos, duration: const Duration(milliseconds: 500,), curve: Curves.ease);
  }
}
