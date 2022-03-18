import 'package:flutter/material.dart';

import '../widgets/dxcustomize.item.widget.dart';

class DXCustomizePage extends StatelessWidget {
  const DXCustomizePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Customize', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 300,
            child: DXCustomizeItem(
              leading: _buildSampleIncrementNumber(),
              title: const Text('Honey 30 ML'),
              trail: const Text('\$ 0.50'),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSampleIncrementNumber(){
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        const VerticalDivider(color: Colors.transparent, width: 5,),
        const Text('1X'),
        const VerticalDivider(color: Colors.transparent, width: 5,),
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
      ],
    );
  }
}
