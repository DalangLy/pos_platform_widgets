import 'package:flutter/material.dart';
import '../widgets/dxnumber.pad.widget.dart';

class DXNumberPadPage extends StatefulWidget {
  const DXNumberPadPage({Key? key}) : super(key: key);

  @override
  State<DXNumberPadPage> createState() => _DXNumberPadPageState();
}

class _DXNumberPadPageState extends State<DXNumberPadPage> {
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
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 400,
            child: DXNumberPad(
              input: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
              onClearClick: (){
                print('clear');
              },
              onNumberClick: (String data){
                print(data);
              },
              onRemoveClick: (){
                print('Remove');
              },
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
