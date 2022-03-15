import 'package:flutter/material.dart';

class DXTable extends StatelessWidget {
  final VoidCallback? onClick;
  final Widget child;
  const DXTable({Key? key, this.onClick, required this.child,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Center(
        child: child,
      ),
    );
  }
}
