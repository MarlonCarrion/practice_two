import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Avatar'), actions: [
        Container(
          margin: const EdgeInsets.only(right: 5),
          child: const CircleAvatar(
            child: Text('SL'),
            backgroundColor: Colors.yellow,
          ),
        )
      ]),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage(
              'https://www.biografiasyvidas.com/biografia/t/fotos/tolstoi_leon.jpg'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text('data'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
