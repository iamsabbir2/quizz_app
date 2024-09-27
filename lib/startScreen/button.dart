import 'package:flutter/material.dart';

class OButton extends StatelessWidget {
  const OButton(this.start,{super.key});

  final void Function() start;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      
      onPressed: start,
      style: const ButtonStyle(
      ),
      label: const Text(
        'Start Quiz',
        style: TextStyle(
          fontSize: 17,
          color: Colors.white,
        ),
      ),
      icon: const Icon(
        Icons.arrow_right_alt,
      ),
      
    );
  }
}
