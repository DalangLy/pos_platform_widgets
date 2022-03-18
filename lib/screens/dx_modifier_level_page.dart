import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxmodifier.level.widget.dart';

class DXModifierLevelPage extends StatelessWidget {
  const DXModifierLevelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Modifier Level', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: DXModifierLevel<String>(
            items: List.generate(100, (index) => '$index'),
            builder: (BuildContext context, item) {
              return Text(
                item.toString(),
                style: Theme.of(context).textTheme.bodyText1,
              );
            },
          ),
        ),
      ),
    );
  }
}
