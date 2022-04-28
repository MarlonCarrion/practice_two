import 'package:flutter/material.dart';
import 'package:practice_two/screens/listview1_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Componentes de Flutter')),
          elevation: 10,
        ),
        body: ListView.separated(
          itemCount: 5,
          itemBuilder: (context, index) => ListTile(
            title: const Text('Hell!'),
            trailing: const Icon(Icons.accessibility_rounded),
            onTap: () {
              final route = MaterialPageRoute(
                  builder: (context) => const ListView1Screen());
              Navigator.push(context, route);
              //pushReplacement sirve cuando no se necesita regresar a la pantalla anterior
              //Navigator.pushReplacement(context, route);
            },
          ),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
  }
}
