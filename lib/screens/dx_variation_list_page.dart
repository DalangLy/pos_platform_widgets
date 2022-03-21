import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxchoice.widget.dart';
import 'package:post_platform_widgets/widgets/dxvariation.list.widget.dart';

class DXVariationListPage extends StatefulWidget {
  const DXVariationListPage({Key? key}) : super(key: key);

  @override
  State<DXVariationListPage> createState() => _DXVariationListPageState();
}

class _DXVariationListPageState extends State<DXVariationListPage> {

  final List<String> items = [
    'Dine-In',
    'Delivery',
    'Take Away'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Variation List', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 600,
            child: DXVariationList(
              title: const Text('Variation*'),
              children: [
                DXChoice(
                  title: const Text('Sizes'),
                  itemCount: 1,
                  builder: (context, index){
                    return ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.circle,), label: const Text('Normal \$ 1.99'));
                  },
                ),
                DXChoice(
                  title: const Text('Channels'),
                  itemCount: items.length,
                  builder: (context, index){
                    return ListTile(tileColor: Colors.red, leading: const Icon(Icons.circle,), title: Text(items[index]), onTap: (){},);
                  },
                  onChanged: (index){
                    print(index);
                  },
                ),
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
                Text('- Fixed Bug on Scroll Limited Error'),
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
