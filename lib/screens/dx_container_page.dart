import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxcontainer.widget.dart';

class DXContainerPage extends StatelessWidget {
  const DXContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Transfer Item', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: DXContainer(
            header: Container(
              width: 400,
              color: Colors.blue,
            ),
            headerTrail: const Text('08/Oct/2021, 11:11 AM | ADMIN'),
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
