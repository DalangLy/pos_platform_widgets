import 'package:flutter/material.dart';

class DXChoice extends StatelessWidget {
  final Widget title;
  final int itemCount;
  final Widget Function(BuildContext context, int index) builder;
  final Function(int index)? onChanged;
  const DXChoice({Key? key, required this.title, required this.itemCount, required this.builder, this.onChanged,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        const double gap = 10.0;//gap between each element
        const int crossAxisCount = 2;//number of element per row

        //do calculation
        const double totalGapValue = gap * (crossAxisCount - 1);
        final double eachElementWidth = constraint.maxWidth / crossAxisCount;
        final double eachElementWidthInPercentageWithoutGap = (eachElementWidth / constraint.maxWidth) * 100;
        final double eachElementWidthInFractionalWithoutGap = eachElementWidthInPercentageWithoutGap/100;
        final double totalGapInPercentage = (totalGapValue / constraint.maxWidth) * 100;
        final double eachGapInPercentage = totalGapInPercentage /crossAxisCount;
        final double eachGapInFractional = eachGapInPercentage/100;
        final double eachElementWidthInFractional = eachElementWidthInFractionalWithoutGap - eachGapInFractional;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title,
            const Divider(color: Colors.transparent,),
            Wrap(
              runSpacing: gap,
              spacing: gap,
              children: List.generate(itemCount, (index) {
                return GestureDetector(
                  onTap: (){
                    if(onChanged == null){
                      return;
                    }
                    onChanged!(index);
                  },
                  child: FractionallySizedBox(
                    widthFactor: eachElementWidthInFractional,
                    child: ClipRect(
                      child: builder(context, index),
                    ),
                  ),
                );
              }),
            ),
          ],
        );
      }
    );
  }
}