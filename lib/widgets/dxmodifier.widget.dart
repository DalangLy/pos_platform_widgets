import 'package:flutter/material.dart';
import 'dxchoice.widget.dart';

class DXModifier extends StatelessWidget {
  final Widget title;
  final List<DXChoice> children;
  final int index;
  const DXModifier({Key? key, required this.title, required this.children, required this.index,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraint) {

          const double headerGap = 10.0;
          const int headerCrossAxisCount = 7;
          const double gap = 10.0;//gap between each element
          const int crossAxisCount = 4;//number of element per row

          //do calculation for header
          const double totalHeaderGapValue = headerGap * (headerCrossAxisCount - 1);
          final double eachHeaderElementWidth = constraint.maxWidth / headerCrossAxisCount;
          final double eachHeaderElementWidthInPercentageWithoutGap = (eachHeaderElementWidth / constraint.maxWidth) * 100;
          final double eachHeaderElementWidthInFractionalWithoutGap = eachHeaderElementWidthInPercentageWithoutGap/100;
          final double totalHeaderGapInPercentage = (totalHeaderGapValue / constraint.maxWidth) * 100;
          final double eachHeaderGapInPercentage = totalHeaderGapInPercentage /headerCrossAxisCount;
          final double eachHeaderGapInFractional = eachHeaderGapInPercentage/100;
          final double eachHeaderElementWidthInFractional = eachHeaderElementWidthInFractionalWithoutGap - eachHeaderGapInFractional;

          //do calculation for content
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
                children: children.map<Widget>((e){
                  return FractionallySizedBox(
                    widthFactor: eachHeaderElementWidthInFractional,
                    child: ListTile(
                      tileColor: Colors.blue,
                      title: e.title,
                    ),
                  );
                }).toList(),
              ),
              const Divider(color: Colors.transparent,),
              Wrap(
                runSpacing: gap,
                spacing: gap,
                children: children[index].children.map<Widget>((e){
                  return FractionallySizedBox(
                    widthFactor: eachElementWidthInFractional,
                    child: e,
                  );
                }).toList(),
              ),
            ],
          );
        }
    );
  }
}
