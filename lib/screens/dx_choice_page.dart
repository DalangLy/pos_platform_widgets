import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxchoice.widget.dart';

class DXChoicePage extends StatefulWidget {
  const DXChoicePage({Key? key}) : super(key: key);

  @override
  State<DXChoicePage> createState() => _DXChoicePageState();
}

class _DXChoicePageState extends State<DXChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Choice', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 300,
            child: DXChoice(
              title: const Text('Channels'),
              children: <Widget>[
                ListTile(tileColor: Colors.red, leading: const Icon(Icons.circle,), title: const Text('Dine-In'), onTap: (){},),
                ListTile(tileColor: Colors.red, leading: const Icon(Icons.circle,), title: const Text('Delivery'), onTap: (){},),
                ListTile(tileColor: Colors.red, leading: const Icon(Icons.circle,), title: const Text('Take Away'), onTap: (){},),
              ],
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
