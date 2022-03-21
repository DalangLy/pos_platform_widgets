import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxcash.widget.dart';
import 'package:post_platform_widgets/widgets/dxnumber.pad.widget.dart';

class DXCashPage extends StatefulWidget {
  const DXCashPage({Key? key}) : super(key: key);

  @override
  State<DXCashPage> createState() => _DXCashPageState();
}

class _DXCashPageState extends State<DXCashPage> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showMyDialog();
        },
        child: const Icon(Icons.help_outline,),
      ),
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
