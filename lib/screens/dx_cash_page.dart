import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxcash.widget.dart';
import 'package:post_platform_widgets/widgets/dxnumber.pad.widget.dart';

class DXCashPage extends StatelessWidget {
  const DXCashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Cash', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 400,
            child: DXCash(
              title: const Text('Cash'),
              note: Container(
                color: Colors.red,
                height: 30,
              ),
              numberPad: const DXNumberPad(
                input: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
