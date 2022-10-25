import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Jesus',
      'last_name': 'Guerrero',
      'email': 'jguegon966@gmail.com',
      'password': '12345',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomInputField(
                  labelText: 'Nombre',
                  helperText: 'Nombre del usuario',
                  hinText: 'Pon tu nombre',
                  icon: (Icons.access_time),
                  suffixIcon: (Icons.account_balance_wallet),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomInputField(
                  labelText: 'Apellido',
                  helperText: 'Apellido del usuario',
                  hinText: 'Pon tu apellido',
                  suffixIcon: (Icons.account_balance_wallet),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomInputField(
                  labelText: 'Email',
                  helperText: 'Nombre del usuario',
                  hinText: 'Pon email',
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: (Icons.account_balance_wallet),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomInputField(
                  labelText: 'Contraseña',
                  helperText: 'Nombre del usuario',
                  hinText: 'Pon una contraseña',
                  obscureText: true,
                  suffixIcon: (Icons.account_balance_wallet),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: const Text('Guardar'),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
