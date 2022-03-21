import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxtable.widget.dart';

class DXTablePage extends StatefulWidget {
  const DXTablePage({Key? key}) : super(key: key);

  @override
  State<DXTablePage> createState() => _DXTablePageState();
}

class _DXTablePageState extends State<DXTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Table', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: const DXTable(
              child: Text('7', style: TextStyle(fontSize: 90),),
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
                Text('- Draw Table Icon'),
                Text('- Add Cursor State on Mouse Hover to "hand icon"'),
                Text('- Table Icon Resize Dynamically base on parent size'),
                Text('- "Clip" Center Child won\'t leak out of it container'),
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
