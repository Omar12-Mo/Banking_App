import 'package:banking_mobile_app/generated/assets.dart';
import 'package:flutter/material.dart';

class leading extends StatelessWidget {
  const leading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Image.asset(Assets.imagesLeadingicon),
    );
  }
}