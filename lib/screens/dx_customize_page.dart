import 'package:flutter/material.dart';

import '../widgets/dxcustomize.item.widget.dart';

class DXCustomizePage extends StatefulWidget {
  const DXCustomizePage({Key? key}) : super(key: key);

  @override
  State<DXCustomizePage> createState() => _DXCustomizePageState();
}

class _DXCustomizePageState extends State<DXCustomizePage> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showMyDialog();
        },
        child: const Icon(Icons.help_outline,),
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

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('What News'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('21-03-2022'),
                Text('- No Update'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
