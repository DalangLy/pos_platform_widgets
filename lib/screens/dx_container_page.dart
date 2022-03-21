import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxcontainer.widget.dart';
import 'package:post_platform_widgets/widgets/dxcustom.paginated.grid.view.widget.dart';

import '../widgets/dxorder.table.widget.dart';

class DXContainerPage extends StatefulWidget {
  const DXContainerPage({Key? key}) : super(key: key);

  @override
  State<DXContainerPage> createState() => _DXContainerPageState();
}

class _DXContainerPageState extends State<DXContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Container', style: TextStyle(color: Colors.black,),),
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
          child: DXContainer(
            header: Container(
              width: 400,
              color: Colors.blue,
            ),
            headerTrail: const Text('08/Oct/2021, 11:11 AM | ADMIN'),
            child: _buildChild(),
          ),
        ),
      ),
    );
  }

  Widget _buildChild(){
    return DXCustomPaginatedGridView(
      itemCount: 10,
      builder: (context, index){
        return DXOrderTable(
          leadingTitle: const Text('#000002', style: TextStyle(fontWeight: FontWeight.bold),),
          leadingSub: Text('2021/10/08, 11:11:11 AM', style: Theme.of(context).textTheme.labelSmall,),
          trailTitle: const Text('Unknown', style: TextStyle(fontWeight: FontWeight.bold),),
          trailSub: Text('Walk-In', style: Theme.of(context).textTheme.labelSmall,),
          transactions: <Widget>[
            _buildSampleTransaction('Sub Total :', '\$ 11.59'),
            _buildSampleTransaction('Discount :', '\$ 2.55'),
            _buildSampleTransaction('Tax :', '\$ 1.16'),
            _buildSampleTransaction('Grand Total :', '\$ 10.20'),
          ],
          actions: <Widget>[
            const Text('In House'),
            ElevatedButton(onPressed: (){}, child: const Text('0.20'),),
          ],
        );
      },
    );
  }

  Widget _buildSampleTransaction(String title, String price,){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,),
        Text(price),
      ],
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
                Text('- No Update'),
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
