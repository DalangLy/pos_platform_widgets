import 'package:flutter/material.dart';

import '../widgets/dxnumber.pad.widget.dart';

class DXNumberPadPage extends StatelessWidget {
  const DXNumberPadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Number Pad', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: SizedBox(
            width: 400,
            child: DXNumberPad(
              input: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
