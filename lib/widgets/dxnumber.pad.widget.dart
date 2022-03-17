import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';

class DXNumberPad extends StatefulWidget {
  final Widget input;
  final Function(String data)? onNumberClick;
  final VoidCallback? onRemoveClick;
  final VoidCallback? onClearClick;

  const DXNumberPad({
    Key? key,
    required this.input,
    this.onNumberClick,
    this.onRemoveClick,
    this.onClearClick,
  }) : super(key: key);

  @override
  State<DXNumberPad> createState() => _DXNumberPadState();
}

class _DXNumberPadState extends State<DXNumberPad> {

  late final List<_CustomGridItem> numberKeys = <_CustomGridItem>[
    _CustomGridItem(child: Text('7', style: Theme.of(context).textTheme.headline4,), value: '7', geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 0, posY: 0)),
    _CustomGridItem(child: Text('8', style: Theme.of(context).textTheme.headline4,), value: '8', geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 1, posY: 0)),
    _CustomGridItem(child: Text('9', style: Theme.of(context).textTheme.headline4,), value: '9', geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 2, posY: 0)),
    const _CustomGridItem(child: Icon(Icons.backspace), keyType: _KeyType.remove, geometry: _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 3, posY: 0)),
    _CustomGridItem(child: Text('4', style: Theme.of(context).textTheme.headline4,), value: '4', geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 0, posY: 1)),
    _CustomGridItem(child: Text('5', style: Theme.of(context).textTheme.headline4,), value: '5', geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 1, posY: 1)),
    _CustomGridItem(child: Text('6', style: Theme.of(context).textTheme.headline4,), value: '6', geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 2, posY: 1)),
    _CustomGridItem(child: Text('C', style: Theme.of(context).textTheme.headline4,), keyType: _KeyType.clear, geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 3, posY: 1)),
    _CustomGridItem(child: Text('1', style: Theme.of(context).textTheme.headline4,), value: '1', geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 0, posY: 2)),
    _CustomGridItem(child: Text('2', style: Theme.of(context).textTheme.headline4,), value: '2', geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 1, posY: 2)),
    _CustomGridItem(child: Text('3', style: Theme.of(context).textTheme.headline4,), value: '3', geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 2, posY: 2)),
    const _CustomGridItem(child: Text('Enter'), keyType: _KeyType.enter, geometry: _CustomGridGeometry(colSpan: 2, rowSpan: 1, posX: 3, posY: 2)),
    _CustomGridItem(child: Text('0', style: Theme.of(context).textTheme.headline4,), value: '0', geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 0, posY: 3)),
    _CustomGridItem(child: Text('00', style: Theme.of(context).textTheme.headline4,), value: '0.0', geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 1, posY: 3)),
    _CustomGridItem(child: Text('.', style: Theme.of(context).textTheme.headline4,), value: '.', geometry: const _CustomGridGeometry(colSpan: 1, rowSpan: 1, posX: 2, posY: 3)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        widget.input,
        const Divider(color: Colors.transparent,),
        Flexible(
          child: GridView(
            gridDelegate: _CustomGridDelegate(
              geometry: numberKeys.map<_CustomGridGeometry>((e) => e.geometry,).toList(),
              gap: 10.0,
              crossAxisCount: 4,
            ),
            children: numberKeys.map<Widget>((e) {
              return TextButton(
                child: e.child,
                style: ButtonStyle(
                  // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //   RoundedRectangleBorder(
                  //     side: const BorderSide(color: Colors.black,),
                  //     borderRadius: BorderRadius.circular(20.0),),
                  // ),
                  elevation: MaterialStateProperty.all(1.0,),
                  backgroundColor: MaterialStateProperty.all(Colors.white,),
                ),
                onPressed: (){
                  switch(e.keyType){
                    case _KeyType.numberPad:
                      if(widget.onNumberClick == null){
                        break;
                      }
                      widget.onNumberClick!(e.value);
                      break;
                    case _KeyType.clear:
                      if(widget.onClearClick == null){
                        break;
                      }
                      widget.onClearClick!();
                      break;
                    case _KeyType.remove:
                      if(widget.onRemoveClick == null){
                        break;
                      }
                      widget.onRemoveClick!();
                      break;
                    case _KeyType.enter:
                    // TODO: Handle this case.
                      break;
                    default:
                      throw Exception('Button Type Unavailable');
                  }
                },
              );
            },).toList(),
          ),
        ),
      ],
    );
  }
}

class _CustomGridItem{
  final Widget child;
  final _CustomGridGeometry geometry;
  final _KeyType keyType;
  final String value;
  const _CustomGridItem({required this.child, this.keyType = _KeyType.numberPad, this.value = '', required this.geometry,});
}

enum _KeyType{
  numberPad,
  clear,
  remove,
  enter,
}
















/// **************************************
///******** My Custom GridViewDelegate ***********
///***************************************

class _CustomGridGeometry{
  final int colSpan;
  final int rowSpan;
  final int posX;
  final int posY;
  const _CustomGridGeometry({required this.colSpan, required this.rowSpan, required this.posX, required this.posY,});
}

class _CustomGridDelegate extends SliverGridDelegate{
  final List<_CustomGridGeometry> geometry;
  final double gap;
  final int crossAxisCount;
  const _CustomGridDelegate({required this.geometry, required this.gap, required this.crossAxisCount,});
  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    final double numberPadFullWidth = constraints.crossAxisExtent;

    final double availableSpaceForNumberPad = numberPadFullWidth - (gap * (crossAxisCount - 1));
    final double eachKeySize = availableSpaceForNumberPad / crossAxisCount;

    return _CustomGridLayout(eachKeySize: eachKeySize, geometry: geometry, gap: gap, crossAxisCount: crossAxisCount,);
  }

  @override
  bool shouldRelayout(covariant SliverGridDelegate oldDelegate) {
    return false;
  }
}

class _CustomGridLayout extends SliverGridLayout{
  final double eachKeySize;
  final List<_CustomGridGeometry> geometry;
  final double gap;
  final int crossAxisCount;
  const _CustomGridLayout({required this.eachKeySize, required this.geometry, required this.gap, required this.crossAxisCount,});
  @override
  double computeMaxScrollOffset(int childCount) {
    //generate height of number key pad to store all number key pad
    return _getFullNumberPadHeight();
  }

  double _getFullNumberPadHeight(){
    double result = 0;
    for (_CustomGridGeometry element in geometry) {
      final _CustomGridGeometry lastGeo = geometry.where((element) => element.posX == 0).last;
      final bool isLast = geometry.indexOf(element) == geometry.indexOf(lastGeo);
      if(element.posX == 0){
        if(isLast){
          result += (element.colSpan * eachKeySize);
        }
        else{
          result += (element.colSpan * eachKeySize) + gap;
        }
      }
    }
    return result;
  }

  @override
  SliverGridGeometry getGeometryForChildIndex(int index) {
    if(index > geometry.length - 1){
      return SliverGridGeometry(
        crossAxisOffset: (eachKeySize + gap) * geometry[index-1].posX,//left and right margin
        scrollOffset: (eachKeySize + gap) * geometry[index-1].posY, //top and bottom margin
        mainAxisExtent: (eachKeySize * geometry[index-1].colSpan) + (gap * (geometry[index-1].colSpan-1)), //height
        crossAxisExtent: (eachKeySize * geometry[index-1].rowSpan) + (gap * (geometry[index-1].rowSpan - 1)), //width
      );
    }
    return SliverGridGeometry(
      crossAxisOffset: (eachKeySize + gap) * geometry[index].posX,//left and right margin
      scrollOffset: (eachKeySize + gap) * geometry[index].posY, //top and bottom margin
      mainAxisExtent: (eachKeySize * geometry[index].colSpan) + (gap * (geometry[index].colSpan-1)), //height
      crossAxisExtent: (eachKeySize * geometry[index].rowSpan) + (gap * (geometry[index].rowSpan - 1)), //width
    );
  }

  @override
  int getMaxChildIndexForScrollOffset(double scrollOffset) {
    //print('second called');
    return scrollOffset.ceil();
  }

  @override
  int getMinChildIndexForScrollOffset(double scrollOffset) {
    //print('first call');
    return scrollOffset.ceil();
  }
}
