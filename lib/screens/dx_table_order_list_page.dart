import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxtable.order.list.widget.dart';
import 'package:post_platform_widgets/widgets/dxtable.order.widget.dart';

class DXTableOrderListPage extends StatefulWidget {
  const DXTableOrderListPage({Key? key}) : super(key: key);

  @override
  State<DXTableOrderListPage> createState() => _DXTableOrderListPageState();
}

class _DXTableOrderListPageState extends State<DXTableOrderListPage> {
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
        actions: [
          IconButton(
            onPressed: (){
              _showMyDialog();
            },
            icon: const Icon(Icons.help_outline,),
          ),
        ],
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

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('What News'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('21-03-2022'),
                Text('- Update Controls Button'),
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
