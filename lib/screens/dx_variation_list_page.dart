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

  int _selectedIndex = 0;

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
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0,),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 40,
                              child: Icon(Icons.radio_button_checked,),
                            ),
                            Text('Normal \$ 1.99'),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                DXChoice(
                  title: const Text('Channels'),
                  itemCount: items.length,
                  builder: (context, index){
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0,),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                              child: Icon(_selectedIndex == index ? Icons.radio_button_checked : Icons.radio_button_unchecked,),
                            ),
                            Text(items[index])
                          ],
                        ),
                      ),
                    );
                  },
                  onChanged: (index){
                    setState(() {
                      _selectedIndex = index;
                    });
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
