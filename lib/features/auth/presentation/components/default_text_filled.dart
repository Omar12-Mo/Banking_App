import 'package:flutter/material.dart';

class DefaultTextFilled extends StatelessWidget {
  const DefaultTextFilled({
    super.key,
    required this.label,
    required this.iconData, required this.controller,
  });
  final String label;
  final IconData iconData;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
         prefixIcon: Icon(iconData),
         
        
        ),
    );
  }
}
