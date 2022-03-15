import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxtable.order.widget.dart';

class DXTableOrderPage extends StatelessWidget {
  const DXTableOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Table Order', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: DXTableOrder(
              title: Text('02'),
            ),
          ),
        ),
      ),
    );
  }
}
