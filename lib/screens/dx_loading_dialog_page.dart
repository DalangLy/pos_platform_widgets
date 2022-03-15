import 'package:flutter/material.dart';
import 'package:post_platform_widgets/widgets/dxloading.dialog.dart';

class DXLoadingDialogPage extends StatefulWidget {
  const DXLoadingDialogPage({Key? key}) : super(key: key);

  @override
  State<DXLoadingDialogPage> createState() => _DXLoadingDialogPageState();
}

class _DXLoadingDialogPageState extends State<DXLoadingDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('DX Loading Dialog', style: TextStyle(color: Colors.black,),),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              _showMyDialog();
            },
            child: const Text('Show DX Dialog'),
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return const DXLoadingDialog(
          label: Text('Printing', style: TextStyle(fontWeight: FontWeight.bold),),
        );
      },
    );
  }
}
