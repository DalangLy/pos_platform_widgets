import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxcustomize.widget.dart';

class DXItemDetail extends StatelessWidget {
  final Widget title;
  final List<Widget> tabs;
  final Widget variation;
  final Widget modifier;
  final Widget modifierLevel;
  final Widget customize;
  final Widget bottom;
  const DXItemDetail({Key? key, required this.title, required this.tabs, required this.variation, required this.modifier, required this.modifierLevel, required this.customize, required this.bottom,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        title,
        const Divider(color: Colors.transparent,),
        const _CustomTabBar(),
        const Divider(color: Colors.transparent,),
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0,),
              border: Border.all(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  variation,
                  const Divider(color: Colors.transparent,),
                  modifier,
                  const Divider(color: Colors.transparent,),
                  modifierLevel,
                  customize,
                ],
              ),
            ),
          ),
        ),
        const Divider(color: Colors.transparent,),
        bottom,
      ],
    );
  }
}







class _CustomTabBar extends StatefulWidget {
  const _CustomTabBar({Key? key}) : super(key: key);

  @override
  State<_CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<_CustomTabBar> with SingleTickerProviderStateMixin{

  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this,);
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10.0,),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0,),
        child: TabBar(
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: const BoxDecoration(
            //borderRadius: BorderRadius.circular(50), // Creates border
            color: Color(0xFF5A6FB5),
          ),
          unselectedLabelColor: Colors.black,
          tabs: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.print),
                  VerticalDivider(width: 5, color: Colors.transparent,),
                  Text('Details'),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.print),
                  VerticalDivider(width: 5, color: Colors.transparent,),
                  Text('Discount'),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.print),
                  VerticalDivider(width: 5, color: Colors.transparent,),
                  Text('Best With'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

