import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DXTab extends StatefulWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index) builder;
  final DXTabControl Function(BuildContext context, DXTabControlsDetail details)? controlsBuilder;
  final double gap;
  final double itemRadius;
  const DXTab({Key? key, required this.itemCount, required this.builder, this.controlsBuilder, this.gap = 10.0, this.itemRadius = 10.0,}) : super(key: key);

  @override
  State<DXTab> createState() => _DXTabState();
}

class _DXTabState extends State<DXTab> {
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
      child: Row(
        children: [
          widget.controlsBuilder == null ? _defaultControl(isReverse: true) : _customControl(isReverse: true,),
          VerticalDivider(color: Colors.transparent, width: widget.gap),
          _buildHorizontalListView(),
          VerticalDivider(color: Colors.transparent, width: widget.gap,),
          widget.controlsBuilder == null ? _defaultControl(isReverse: false,) : _customControl(isReverse: false,),
        ],
      ),
    );
  }

  Widget _buildHorizontalListView(){
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.itemRadius,),
        child: ListView.separated(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return ClipRRect(
              borderRadius: BorderRadius.circular(10.0,),
              child: SizedBox(
                width: 90,
                height: double.infinity,
                child: widget.builder(context, index),
              ),
            );
          },
          separatorBuilder: (context, index){
            return VerticalDivider(color: Colors.transparent, width: widget.gap,);
          },
          itemCount: widget.itemCount,
        ),
      ),
    );
  }

  Widget _defaultControl({required bool isReverse,}){
    return SizedBox(
      height: double.infinity,
      child: ElevatedButton(
        onPressed: (){
          isReverse ? _scrollReverse() : _scrollForward();
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.itemRadius,),
            ),
          ),
        ),
        child: Icon(isReverse ? Icons.chevron_left : Icons.chevron_right,),
      ),
    );
  }

  Widget _customControl({required bool isReverse,}){
    return Builder(
      builder: (context){
        final DXTabControlsDetail dxTabControlsDetail = DXTabControlsDetail(onPrev: _scrollReverse, onNext: _scrollForward,);
        final DXTabControl dxTabControls = widget.controlsBuilder!(context, dxTabControlsDetail,);
        return isReverse ? dxTabControls.prev : dxTabControls.next;
      },
    );
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
    _controller.animateTo(_scrolledPos, duration: const Duration(milliseconds: 500,), curve: Curves.bounceIn);
  }
}

class DXTabControlsDetail{
  final VoidCallback onPrev;
  final VoidCallback onNext;
  const DXTabControlsDetail({required this.onPrev, required this.onNext,});
}

class DXTabControl{
  final Widget prev;
  final Widget next;
  const DXTabControl({required this.prev, required this.next,});
}