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
          child: SizedBox(
            width: 300,
            child: DXChoice(
              title: const Text('Channels'),
              children: <Widget>[
                ListTile(tileColor: Colors.red, leading: const Icon(Icons.circle,), title: const Text('Dine-In'), onTap: (){},),
                ListTile(tileColor: Colors.red, leading: const Icon(Icons.circle,), title: const Text('Delivery'), onTap: (){},),
                ListTile(tileColor: Colors.red, leading: const Icon(Icons.circle,), title: const Text('Take Away'), onTap: (){},),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
