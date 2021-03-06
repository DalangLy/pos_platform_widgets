import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxitem.detail.widget.dart';

import '../widgets/dxchoice.widget.dart';
import '../widgets/dxcustomize.item.widget.dart';
import '../widgets/dxmodifier.level.widget.dart';
import '../widgets/dxmodifier.widget.dart';
import '../widgets/dxvariation.list.widget.dart';

class DXItemDetailPage extends StatefulWidget {
  const DXItemDetailPage({Key? key}) : super(key: key);

  @override
  State<DXItemDetailPage> createState() => _DXItemDetailPageState();
}

class _DXItemDetailPageState extends State<DXItemDetailPage> {
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
            width: 600,
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showMyDialog();
        },
        child: const Icon(Icons.help_outline,),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('What News'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('21-03-2022'),
                Text('- Fix Bugs on scrolling inside variation'),
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

  final List<String> _modifierLevels = List.generate(5, (index) => '$index');
  int _selectedModifierLevelIndex = 0;
  Widget _buildModifierLevel(){
    return DXModifierLevel<String>(
      itemCount: _modifierLevels.length,
      selectedIndex: _selectedModifierLevelIndex,
      builder: (BuildContext context, int index) {
        return Text(
          _modifierLevels[index].toString(),
          style: Theme.of(context).textTheme.bodyText1,
        );
      },
      onChanged: (index){
        setState(() {
          _selectedModifierLevelIndex = index;
        });
      },
    );
  }

  int _selectedIndex = 0;
  final List<String> items = [
    'Dine-In',
    'Delivery',
    'Take Away'
  ];
  Widget _buildModifier(){
    return DXModifier(
      title: const Text('Modifier'),
      selectedIndex: _selectedIndex,
      onChange: (index){
        setState(() {
          _selectedIndex = index;
        });
      },
      children: <DXChoice>[
        DXChoice(
          title: const Text('Sizes'),
          itemCount: 1,
          builder: (context, index){
            return DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0,),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 40,
                      child: Icon(Icons.radio_button_checked,),
                    ),
                    Text('Normal \$ 1.99')
                  ],
                ),
              ),
            );
          },
        ),
        DXChoice(
          title: const Text('Channels'),
          itemCount: items.length,
          builder: (context, index){
            return DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0,),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: Icon(_selectedIndex == index ? Icons.radio_button_checked : Icons.radio_button_unchecked,),
                    ),
                    Text(items[index])
                  ],
                ),
              ),
            );
          },
          onChanged: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ],
    );
  }

  int selectedVariationListChannelIndex = 0;

  Widget _buildVariationList(){
    return DXVariationList(
      title: const Text('Variation*'),
      children: [
        DXChoice(
          title: const Text('Sizes'),
          itemCount: 1,
          builder: (context, index){
            return DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0,),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 40,
                      child: Icon(Icons.radio_button_checked,),
                    ),
                    Text('Normal \$ 1.99')
                  ],
                ),
              ),
            );
          },
        ),
        DXChoice(
          title: const Text('Channels'),
          itemCount: items.length,
          builder: (context, index){
            return DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0,),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 40,
                      child: Icon(selectedVariationListChannelIndex == index ? Icons.radio_button_checked : Icons.radio_button_unchecked,),
                    ),
                    Text(items[index])
                  ],
                ),
              ),
            );
          },
          onChanged: (index){
            setState(() {
              selectedVariationListChannelIndex = index;
            });
          },
        ),
      ],
    );
  }
}
