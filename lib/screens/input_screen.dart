import 'package:flutter/material.dart';
import 'package:practice_two/widgets/custom_input_field.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input and Forms')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            child: Column(
              children: [
                const CustomInputField(
                  hintText: 'Nombre Usuario',
                  labelText: 'Nombre Usuario',
                  prefixIcon: Icons.person,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomInputField(
                  hintText: 'Apellido',
                  labelText: 'Apellido Usuario',
                  icon: Icons.local_gas_station,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomInputField(
                  hintText: 'Email',
                  labelText: 'Email Usuario',
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomInputField(
                  hintText: 'Password',
                  labelText: 'Password',
                  prefixIcon: Icons.password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
