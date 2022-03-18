import 'package:flutter/material.dart';

class DXOrderTable extends StatelessWidget {
  final Widget leadingTitle;
  final Widget leadingSub;
  final Widget trailTitle;
  final Widget trailSub;
  final List<Widget> transactions;
  final List<Widget> actions;
  const DXOrderTable({Key? key, required this.leadingTitle, required this.leadingSub, required this.trailTitle, required this.trailSub, required this.transactions, required this.actions,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0,),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0,),
        child: Column(
          children: [
            _buildHeader(),
            const Divider(),
            Expanded(
              child: Column(
                children: transactions.map<Widget>((transaction) {
                  return Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: transaction,);
                }).toList(),
              ),
            ),
            _buildActions(),
          ],
        ),
      ),
    );
  }

  Widget _buildActions(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: actions.map<Widget>((action) {
        final int currentIndex = actions.indexOf(action);
        final bool lastIndex = currentIndex >= (actions.length-1);
        if(currentIndex == 0){
          return Padding(padding: const EdgeInsets.only(right: 8.0), child: action,);
        }
        else if(lastIndex){
          return Padding(padding: const EdgeInsets.only(left: 8.0), child: action,);
        }
        else{
          return Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0), child: action,);
        }
      }).toList(),
    );
  }

  Widget _buildHeader(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              leadingTitle,
              leadingSub,
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              trailTitle,
              trailSub,
            ],
          ),
        ),
      ],
    );
  }
}
