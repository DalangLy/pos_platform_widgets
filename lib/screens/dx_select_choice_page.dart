import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxselect.choice.widget.dart';

class DXSelectChoicePage extends StatefulWidget {
  const DXSelectChoicePage({Key? key}) : super(key: key);

  @override
  State<DXSelectChoicePage> createState() => _DXSelectChoicePageState();
}

class _DXSelectChoicePageState extends State<DXSelectChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Select Choice', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 300,
            child: DXSelectChoice<String>(
              items: List.generate(100, (index) => '$index'),
              builder: (context, item){
                return ListTile(
                  leading: const Icon(Icons.circle),
                  title: Text(item.toString(),),
                );
              },
              action: ElevatedButton(
                onPressed: (){},
                child: const Text('CONFIRM'),
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
