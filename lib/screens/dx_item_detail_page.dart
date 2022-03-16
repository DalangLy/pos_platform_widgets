import 'package:flutter/material.dart';

class DXItemDetailPage extends StatelessWidget {
  const DXItemDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Item Detail', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 400,
            child: Container(),
          ),
        ),
      ),
    );
  }
}
