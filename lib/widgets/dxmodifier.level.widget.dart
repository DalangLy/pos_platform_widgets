import 'package:flutter/material.dart';

class DXModifierLevel<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext context, T item,) builder;
  const DXModifierLevel({Key? key, required this.items, required this.builder,}) : super(key: key);

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
          alignment: WrapAlignment.end,
          children: items.map<Widget>((e){
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
                        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFEEEEEE))
                    ),
                    onPressed: (){},
                    child: builder(context, e,),
                  ),
                ),
              ),
            );
          }).toList(),
        );
      }
    );
  }
}
