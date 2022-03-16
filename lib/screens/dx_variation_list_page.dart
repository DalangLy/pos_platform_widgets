import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxchoice.widget.dart';
import 'package:post_platform_widgets/widgets/dxvariation.list.widget.dart';

class DXVariationListPage extends StatelessWidget {
  const DXVariationListPage({Key? key}) : super(key: key);

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
                  children: [
                    ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.circle,), label: const Text('Normal \$ 1.99')),
                  ],
                ),
                DXChoice(
                  title: const Text('Channels'),
                  children: [
                    ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.circle,), label: const Text('Dine In')),
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
