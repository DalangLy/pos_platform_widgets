import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxtable.order.widget.dart';

class DXTableOrderPage extends StatefulWidget {
  const DXTableOrderPage({Key? key}) : super(key: key);

  @override
  State<DXTableOrderPage> createState() => _DXTableOrderPageState();
}

class _DXTableOrderPageState extends State<DXTableOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Table Order', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: const SafeArea(
        child: Center(
          child: SizedBox(
            width: 200,
            height: 200,
            child: DXTableOrder(
              title: Text('02'),
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
