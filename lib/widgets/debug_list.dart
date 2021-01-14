import 'package:flutter/material.dart';

class DebugList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 50,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 1.5,
            child: ListTile(
              title: Text("List Item",
                  style: TextStyle(fontSize: 22), textAlign: TextAlign.center),
            ),
          ),
        );
      },
    );
  }
}
