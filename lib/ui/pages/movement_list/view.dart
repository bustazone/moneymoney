import 'package:flutter/material.dart';

class MovementListScreenView extends StatelessWidget {
  final Function onFilter;
  final Function onNew;
  final Function onEdit;

  const MovementListScreenView(
      {required this.onFilter,
      required this.onNew,
      required this.onEdit,
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
                  child: const Text('movement list'),
            )
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          child: const Icon( Icons.add ),
          onPressed: () {
          },
        ),
    );
  }
}
