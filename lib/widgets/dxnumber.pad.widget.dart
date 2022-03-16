import 'package:flutter/material.dart';

class DXNumberPad extends StatelessWidget {
  final Widget input;
  final Function(String data)? onNumberClick;
  final VoidCallback? onRemoveClick;
  final VoidCallback? onClearClick;

  const DXNumberPad({
    Key? key,
    required this.input,
    this.onNumberClick,
    this.onRemoveClick,
    this.onClearClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        input,
        const Divider(color: Colors.transparent,),
        Flexible(
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
            itemBuilder: (context, index) {
              return ElevatedButton(
                onPressed: () {},
                child: Text('$index'),
              );
            },
          ),
        ),
      ],
    );
  }
}

//class _CustomGridDelegate
