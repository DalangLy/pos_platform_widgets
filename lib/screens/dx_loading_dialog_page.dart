import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxloading.dialog.dart';

class DXLoadingDialogPage extends StatefulWidget {
  const DXLoadingDialogPage({Key? key}) : super(key: key);

  @override
  State<DXLoadingDialogPage> createState() => _DXLoadingDialogPageState();
}

class _DXLoadingDialogPageState extends State<DXLoadingDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Loading Dialog', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              _showLoadingDialog();
            },
            child: const Text('Show DX Dialog'),
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

  Future<void> _showLoadingDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return const DXLoadingDialog(
          label: Text('Printing', style: TextStyle(fontWeight: FontWeight.bold),),
        );
      },
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
