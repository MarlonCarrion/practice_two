import 'package:flutter/material.dart';
import 'package:practice_two/themes/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Screen'),
      ),
      body: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AppTheme.primary,
                  shape: const StadiumBorder(),
                  elevation: 10),
              onPressed: () {},
              child: const Text('Mostrar Alerta!'))),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppTheme.primary,
          child: const Icon(Icons.cabin),
          onPressed: () {}),
    );
  }
}
