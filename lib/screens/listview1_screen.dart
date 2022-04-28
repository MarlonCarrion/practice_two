import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Filmoteca Maldita', 'Dross', 'Alvinsh'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('List View 1')),
      ),
      body: ListView(
        children: [
          ...options
              .map((e) => ListTile(
                    leading: const Icon(Icons.account_circle_sharp),
                    title: Text(e),
                    trailing: const Icon(Icons.accessibility_sharp),
                  ))
              .toList()
        ],
      ),
    );
  }
}
