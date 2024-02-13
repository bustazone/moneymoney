import 'package:flutter/material.dart';

class MovementListFilterScreenView extends StatelessWidget {
  final Function onSave;
  final Function onCancel;

  const MovementListFilterScreenView(
      {required this.onSave,
      required this.onCancel,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // You must wait until the controller is initialized before displaying the
        // camera preview. Use a FutureBuilder to display a loading spinner until the
        // controller has finished initializing.
        body: Stack(children: [
          Center(
              child: Container(
                  margin: const EdgeInsets.all(8),
                  child: const Text('movement edit'),
            )
          ),
        ])
    );
  }
}
