import 'package:flutter/material.dart';

class DXModifierLevel<T> extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index,) builder;
  final Function(int index,)? onChanged;
  final int selectedIndex;
  final WrapAlignment alignment;
  const DXModifierLevel({Key? key, required this.itemCount, required this.builder, this.onChanged, required this.selectedIndex, this.alignment = WrapAlignment.start,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        const double gap = 10.0;//gap between each element
        const int crossAxisCount = 7;//number of element per row

        //do calculation
        const double totalGapValue = gap * (crossAxisCount - 1);
        final double eachElementWidth = constraint.maxWidth / crossAxisCount;
        final double eachElementWidthInPercentageWithoutGap = (eachElementWidth / constraint.maxWidth) * 100;
        final double eachElementWidthInFractionalWithoutGap = eachElementWidthInPercentageWithoutGap/100;
        final double totalGapInPercentage = (totalGapValue / constraint.maxWidth) * 100;
        final double eachGapInPercentage = totalGapInPercentage /crossAxisCount;
        final double eachGapInFractional = eachGapInPercentage/100;
        final double eachElementWidthInFractional = eachElementWidthInFractionalWithoutGap - eachGapInFractional;

        return Wrap(
          runSpacing: gap,
          spacing: gap,
          alignment: alignment,
          children: List.generate(itemCount, (index) {
            return FractionallySizedBox(
              widthFactor: eachElementWidthInFractional,
              child: ClipRect(
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(0.0),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          // side: const BorderSide(),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(selectedIndex == index ? Colors.blue : const Color(0xFFEEEEEE),),
                    ),
                    onPressed: (){
                      if(onChanged == null){
                        return;
                      }
                      onChanged!(index);
                    },
                    child: builder(context, index,),
                  ),
                ),
              ),
            );
          }),
        );
      }
    );
  }
}
