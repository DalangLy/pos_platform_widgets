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
                  children: <Widget>[
                    ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.circle,), label: const Text('Normal \$ 1.99'))
                  ],
                ),
                DXChoice(
                  title: const Text('Channels'),
                  children: <Widget>[
                    ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.circle,), label: const Text('Dine-In')),
                    ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.circle,), label: const Text('Delivery')),
                    ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.circle,), label: const Text('Take Away')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
