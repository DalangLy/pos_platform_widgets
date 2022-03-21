import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxchoice.widget.dart';
import 'package:post_platform_widgets/widgets/dxmodifier.widget.dart';

class DXModifierPage extends StatefulWidget {
  const DXModifierPage({Key? key}) : super(key: key);

  @override
  State<DXModifierPage> createState() => _DXModifierPageState();
}

class _DXModifierPageState extends State<DXModifierPage> {
  int _selectIndex = 0;

  final List<String> items = [
    'Dine-In',
    'Delivery',
    'Take Away'
  ];

  @override
  void initState() {
    super.initState();
  }

  int _selectedChannelIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Modifier', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 600,
            child: DXModifier(
              title: const Text('Modifier'),
              index: _selectIndex,
              onChange: (index){
                setState(() {
                  _selectIndex = index;
                });
              },
              children: <DXChoice>[
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
                              child: Icon(Icons.radio_button_checked),
                            ),
                            Text('Normal \$ 1.99'),
                          ],
                        ),
                      ),
                    );
                  },
                  onChanged: (index){
                    setState(() {
                      print('hello');
                      _selectedChannelIndex = index;
                    });
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
                              child: Icon(_selectedChannelIndex == index ? Icons.radio_button_checked : Icons.radio_button_unchecked,),
                            ),
                            Text(items[index])
                          ],
                        ),
                      ),
                    );
                  },
                  onChanged: (index){
                    setState(() {
                      print('hello');
                      _selectedChannelIndex = index;
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
                Text('- Customize header cross axis count'),
                Text('- dynamic header width base on cross axis count'),
                Text('- Customize children cross axis count'),
                Text('- Using Builder instead of Static List to improve performance and customizable'),
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
