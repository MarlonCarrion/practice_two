import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_two/themes/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(
              children: const [
                Text('Este es el contenido de la alerta'),
                FlutterLogo(
                  size: 50,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Ok',
                    style: TextStyle(color: Colors.indigo),
                  ))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta!'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(
                  size: 50,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Platform.isAndroid
                    ? displayDialogAndroid(context)
                    : displayDialogIOS(context);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Mostrar Alerta!',
                  style: TextStyle(fontSize: 17),
                ),
              ))),
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppTheme.primary,
          child: const Icon(Icons.cabin),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
