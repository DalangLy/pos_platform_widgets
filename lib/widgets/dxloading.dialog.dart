import 'package:flutter/material.dart';

class DXLoadingDialog extends StatelessWidget {
  final Widget label;
  final Widget? icon;
  final Widget? action;
  const DXLoadingDialog({Key? key, required this.label, this.icon, this.action, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon ?? const CircularProgressIndicator(
              strokeWidth: 2,
              // valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.onSurface,),
            ),
            const SizedBox(
              height: 20,
            ),
            label,
          ],
        ),
      ),
      actions: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: action ?? ElevatedButton(
            style: ButtonStyle(
              elevation: MaterialStateProperty.all<double>(0,),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel',),
          ),
        ),
      ],
      contentPadding: const EdgeInsets.all(20),
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}
