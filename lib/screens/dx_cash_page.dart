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
              numberPad: DXNumberPad(
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
