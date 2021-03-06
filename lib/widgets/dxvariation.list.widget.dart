import 'package:flutter/material.dart';
import 'dxchoice.widget.dart';

class DXVariationList extends StatelessWidget {
  final Widget title;
  final List<DXChoice> children;
  const DXVariationList({Key? key, required this.title, required this.children,}) : super(key: key);

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
                children: children.map<Widget>((dxChoice){
                  return FractionallySizedBox(
                    widthFactor: eachElementWidthInFractional,
                    child: dxChoice,
                  );
                }).toList(),
              ),
            ],
          );
        }
    );
  }
}