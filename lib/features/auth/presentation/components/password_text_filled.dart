import 'package:flutter/material.dart';

class PasswordTextFilled extends StatefulWidget {
  const PasswordTextFilled({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<PasswordTextFilled> createState() => _PasswordTextFilledState();
}

class _PasswordTextFilledState extends State<PasswordTextFilled> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: !showPassword,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        labelText: 'password',
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              showPassword = !showPassword;
            });
          },
          icon: Icon(showPassword ? Icons.visibility_off : Icons.visibility),
        ),
      ),
    );
  }
}
