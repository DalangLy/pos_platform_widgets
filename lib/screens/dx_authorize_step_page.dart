import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxauthorize.step.dialog.dart';

class DXAuthorizeStepPage extends StatefulWidget {
  const DXAuthorizeStepPage({Key? key}) : super(key: key);

  @override
  State<DXAuthorizeStepPage> createState() => _DXAuthorizeStepPageState();
}

class _DXAuthorizeStepPageState extends State<DXAuthorizeStepPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Authorize Step', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              _showAuthorizeStepDialog();
            },
            child: const Text('Show DX Authorize Step Dialog'),
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

  Future<void> _showAuthorizeStepDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return DXAuthorizeStep(
          steps: [
            Container(),
            Container(),
          ],
        );
      },
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('What News'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('21-03-2022'),
                Text('- Fix Bugs On Scrolling inside dialog'),
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
