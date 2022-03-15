import 'package:flutter/material.dart';

class DXAuthorizeStep extends StatefulWidget {
  final List<Widget> steps;

  const DXAuthorizeStep({
    Key? key,
    required this.steps,
  }) : super(key: key);

  @override
  State<DXAuthorizeStep> createState() => _DXAuthorizeStepState();
}

class _DXAuthorizeStepState extends State<DXAuthorizeStep> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 400,
        height: 500,
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              const TabBar(
                labelColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: EdgeInsets.all(0),
                indicatorPadding: EdgeInsets.all(0),
                tabs: [
                  Tab(
                    icon: Icon(Icons.lock),
                  ),
                  Tab(
                    icon: Icon(Icons.menu),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.red,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
