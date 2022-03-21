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
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('You Clicked on Clear Button', ),
                    duration: const Duration(milliseconds: 300,),
                    action: SnackBarAction(
                      label: 'Dismiss',
                      textColor: Colors.yellow,
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                    ),
                  ),
                );
                print('clear');
              },
              onNumberClick: (String data){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You Clicked on $data', ),
                    duration: const Duration(milliseconds: 300,),
                    action: SnackBarAction(
                      label: 'Dismiss',
                      textColor: Colors.yellow,
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                    ),
                  ),
                );
                print(data);
              },
              onRemoveClick: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('You Clicked on Remove Button', ),
                    duration: const Duration(milliseconds: 300,),
                    action: SnackBarAction(
                      label: 'Dismiss',
                      textColor: Colors.yellow,
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                    ),
                  ),
                );
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
