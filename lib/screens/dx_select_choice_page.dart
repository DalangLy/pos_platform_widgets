import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxselect.choice.widget.dart';

class DXSelectChoicePage extends StatelessWidget {
  const DXSelectChoicePage({Key? key}) : super(key: key);

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
    );
  }
}
