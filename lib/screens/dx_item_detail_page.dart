import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxitem.detail.widget.dart';

import '../widgets/dxchoice.widget.dart';
import '../widgets/dxcustomize.item.widget.dart';
import '../widgets/dxmodifier.level.widget.dart';
import '../widgets/dxmodifier.widget.dart';
import '../widgets/dxvariation.list.widget.dart';

class DXItemDetailPage extends StatelessWidget {
  const DXItemDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Item Detail', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 500,
            child: DXItemDetail(
              title: Container(
                height: 50,
                color: Colors.red,
              ),
              tabs: [],
              variation: _buildVariationList(),
              modifier: _buildModifier(),
              modifierLevel: _buildModifierLevel(),
              customize: _buildCustomize(),
              bottom: _buildBottom(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottom(){
    return Row(
      children: [
        _buildSampleIncrementNumber(),
        const Spacer(),
        ElevatedButton(onPressed: (){}, child: const Text('Send Order'),),
        const SizedBox(width: 5,),
        ElevatedButton(onPressed: (){}, child: const Text('Remove'),),
        const SizedBox(width: 5,),
        ElevatedButton(onPressed: (){}, child: const Text('Update'),),
      ],
    );
  }

  Widget _buildCustomize(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Customize'),
        const Divider(color: Colors.transparent, height: 5,),
        Column(
          children: List.generate(10, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: DXCustomizeItem(
                leading: _buildSampleIncrementNumber(),
                title: const Text('Honey 30 ML'),
                trail: const Text('\$ 0.50'),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildSampleIncrementNumber(){
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        const VerticalDivider(color: Colors.transparent, width: 5,),
        const Text('1X'),
        const VerticalDivider(color: Colors.transparent, width: 5,),
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
      ],
    );
  }


  Widget _buildModifierLevel(){
    return DXModifierLevel<String>(
      items: List.generate(5, (index) => '$index'),
      builder: (BuildContext context, item) {
        return Text(
          item.toString(),
          style: Theme.of(context).textTheme.bodyText1,
        );
      },
    );
  }

  Widget _buildModifier(){
    return DXModifier(
      title: const Text('Modifier'),
      index: 1,
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
    );
  }

  Widget _buildVariationList(){
    return DXVariationList(
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
    );
  }
}
