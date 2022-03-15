import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxtable.order.list.widget.dart';
import 'package:post_platform_widgets/widgets/dxtable.order.widget.dart';

class DXTableOrderListPage extends StatelessWidget {
  const DXTableOrderListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Table Order List', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: DXTableOrderList<String>(
            items: const ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine'],
            builder: (context, item,){
              return DXTableOrder(title: Text(item.toString()),);
            },
          ),
        ),
      ),
    );
  }
}
