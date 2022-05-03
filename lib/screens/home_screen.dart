import 'package:flutter/material.dart';
import 'package:practice_two/router/app_router.dart';
import 'package:practice_two/screens/card_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRouter.menuOptions;
    return Scaffold(
      //comment
      appBar: AppBar(
        title: const Center(child: Text('Componentes de Flutter')),
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].name),
          trailing: Icon(
            menuOptions[index].icon,
            color: Colors.indigo,
          ),
          onTap: () {
            final route = MaterialPageRoute(
                builder: (context) => menuOptions[index].screen);
            Navigator.push(context, route);

            //Navigator.push(context, route);

            //pushReplacement sirve cuando no se necesita regresar a la pantalla anterior
            //Navigator.pushReplacement(context, route);
          },
        ),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
