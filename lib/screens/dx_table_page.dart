import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxtable.widget.dart';

class DXTablePage extends StatelessWidget {
  const DXTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Table', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: const DXTable(
              child: Text('1'),
            ),
          ),
        ),
      ),
    );
  }
}
