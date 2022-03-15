import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxtransfer.item.widget.dart';

class DXTransferItemPage extends StatelessWidget {
  const DXTransferItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Transfer Item', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 500,
            child: DXTransferItem<String>(
              title: const Text('Move Items'),
              items: List.generate(100, (index) => '$index').toList(),
              builder: (context, item,){
                return Text(item.toString());
              },
              transfer: _buildTransfer(),
              actions: [
                ElevatedButton.icon(onPressed: (){}, label: const Text('Cancel'), icon: const Icon(Icons.clear),),
                ElevatedButton.icon(onPressed: (){}, label: const Text('Move'), icon: const Icon(Icons.clear),),
                ElevatedButton.icon(onPressed: (){}, label: const Text('Move All'), icon: const Icon(Icons.clear),),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTransfer(){
    return SizedBox(
      height: 70.0,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              tileColor: Colors.grey,
              title: const Text('From Table'),
              subtitle: const Text('12MAIN'),
              onTap: (){},
            ),
          ),
          const VerticalDivider(color: Colors.transparent,),
          Expanded(
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              tileColor: Colors.grey,
              title: const Text('To Table'),
              subtitle: const Text('01F1'),
              onTap: (){},
            ),
          ),
        ],
      ),
    );
  }
}
