import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxorder.widget.dart';

class DXOrderPage extends StatelessWidget {
  const DXOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'DX Order',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 350,
            height: 260,
            child: DXOrder(
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
            ),
          ),
        ),
      ),
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
}
