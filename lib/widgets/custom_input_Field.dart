import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hinText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomInputField({
    Key? key,
    this.hinText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        print('value: $value');
      },
      validator: (value) {
        if (value!.isEmpty) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hinText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null ? null : Icon(Icons.group_outlined),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
