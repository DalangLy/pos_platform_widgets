import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxtable.info.widget.dart';

class DXTableInfoPage extends StatefulWidget {
  const DXTableInfoPage({Key? key}) : super(key: key);

  @override
  State<DXTableInfoPage> createState() => _DXTableInfoPageState();
}

class _DXTableInfoPageState extends State<DXTableInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Table Info', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 300,
            child: DXTableInfo(
              date: const Text('2021/08/20'),
              time: const Text('05:05'),
              content: Container(color: Colors.red, height: 50,),
              ship: const Text('1/6'),
              amount: const Text('\$ 16.50'),
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
      barrierDismissible: true, // user must tap button!
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
