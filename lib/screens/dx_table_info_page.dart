import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxtable.info.widget.dart';

class DXTableInfoPage extends StatelessWidget {
  const DXTableInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Choice', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 300,
            child: DXTableInfo(
              date: const Text('2021/08/20'),
              time: const Text('05:05'),
              content: Container(color: Colors.red, height: 50,),
              ship: const Text('1/6'),
              amount: const Text('\$ 16.50'),
            ),
          ),
        ),
      ),
    );
  }
}
