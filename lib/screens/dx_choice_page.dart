import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxchoice.widget.dart';

class DXChoicePage extends StatelessWidget {
  const DXChoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Choice', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: DXChoice(
            title: const Text('Channels'),
            children: <Widget>[
              ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.circle), label: const Text('Dine-In'),),
              ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.circle), label: const Text('Delivery'),),
              ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.circle), label: const Text('Take Away'),),
            ],
          ),
        ),
      ),
    );
  }
}
