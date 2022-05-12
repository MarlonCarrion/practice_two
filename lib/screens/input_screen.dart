import 'package:flutter/material.dart';
import 'package:practice_two/widgets/custom_input_field.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Marlon',
      'last_name': 'Carrion',
      'email': 'marloncarrion02@gmail.com',
      'password': '12345',
      'role': 'Admin'
    };
    return Scaffold(
      appBar: AppBar(title: const Text('Input and Forms')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            child: Column(
              children: [
                CustomInputField(
                  hintText: 'Nombre Usuario',
                  labelText: 'Nombre Usuario',
                  prefixIcon: Icons.person,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomInputField(
                  hintText: 'Apellido',
                  labelText: 'Apellido Usuario',
                  icon: Icons.local_gas_station,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomInputField(
                  hintText: 'Email',
                  labelText: 'Email Usuario',
                  prefixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomInputField(
                  hintText: 'Password',
                  labelText: 'Password',
                  prefixIcon: Icons.password,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'Junior Dev', child: Text('Junior Dev')),
                      DropdownMenuItem(
                          value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(
                          value: 'Director', child: Text('Director')),
                    ],
                    onChanged: (value) {}),
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
