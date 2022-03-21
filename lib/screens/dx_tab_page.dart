import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxtab.widget.dart';

class DXTabPage extends StatefulWidget {
  const DXTabPage({Key? key}) : super(key: key);

  @override
  State<DXTabPage> createState() => _DXTabPageState();
}

class _DXTabPageState extends State<DXTabPage> {
  final List<String> items = List.generate(100, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Tab', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 60.0,
            child: DXTab(
              itemCount: items.length,
              builder: (BuildContext context, item) {
                return ElevatedButton(onPressed: (){}, child: Text(item.toString(),),);
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
                Text('- Can Customize Controls'),
                Text('- Now Has Default Controls, Can Click "Prev" and "Next" Without Define Your Own Control'),
                Text('- Now Can Set Gap Between Items'),
                Text('- Add Padding'),
                Text('- Change From "List<Widget>" to "Builder" to improve performance and customizable'),
                Text('- Set All Items Equal Width'),
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
