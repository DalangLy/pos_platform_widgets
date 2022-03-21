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

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _showBugsDialog();
    });
  }


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



  Future<void> _showBugsDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Warning'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This Widget Has Bugs, Working On Progress to Fix it.'),
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
