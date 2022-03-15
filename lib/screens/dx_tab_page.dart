import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxtab.widget.dart';

class DXTabPage extends StatelessWidget {
  const DXTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Tab', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: DXTab<String>(
            items: List.generate(100, (index) => 'Tab $index'),
            builder: (BuildContext context, item) {
              return ElevatedButton(onPressed: (){}, child: Text(item.toString(),),);
            },
          ),
        ),
      ),
    );
  }
}
