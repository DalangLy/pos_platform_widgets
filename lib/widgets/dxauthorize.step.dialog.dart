import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxselect.choice.widget.dart';

class DXAuthorizeStep extends StatefulWidget {
  final List<Widget> steps;

  const DXAuthorizeStep({
    Key? key,
    required this.steps,
  }) : super(key: key);

  @override
  State<DXAuthorizeStep> createState() => _DXAuthorizeStepState();
}

class _DXAuthorizeStepState extends State<DXAuthorizeStep> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this,);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 400,
        height: 500,
        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraint) {
                return SizedBox(
                  width: (constraint.maxWidth * 50) / 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.lock),
                        onPressed: () => _tabController.index = 0,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                          child: const Divider(
                            color: Colors.black,
                            height: 50,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () => _tabController.index = 1,
                      ),
                    ],
                  ),
                );
              }
            ),
            const Divider(color: Colors.transparent,),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    color: Colors.red,
                    height: double.infinity,
                  ),
                  DXSelectChoice<String>(
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
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
