import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget
{
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Text(
      'Learn Flutter The Fun Way!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
    );
  }
}