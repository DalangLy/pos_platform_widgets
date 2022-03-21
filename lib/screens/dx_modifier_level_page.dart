import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxmodifier.level.widget.dart';

class DXModifierLevelPage extends StatefulWidget {
  const DXModifierLevelPage({Key? key}) : super(key: key);

  @override
  State<DXModifierLevelPage> createState() => _DXModifierLevelPageState();
}

class _DXModifierLevelPageState extends State<DXModifierLevelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Modifier Level', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: DXModifierLevel<String>(
            items: List.generate(100, (index) => '$index'),
            builder: (BuildContext context, item) {
              return Text(
                item.toString(),
                style: Theme.of(context).textTheme.bodyText1,
              );
            },
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
                Text('- Customize header cross axis count'),
                Text('- Each Items width are the same'),
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
