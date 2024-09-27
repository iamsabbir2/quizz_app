import 'package:flutter/material.dart';

class AddImage extends StatelessWidget
{
  const AddImage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Image.asset(
          'assets/images/quiz-logo.png',
          width: 350,
          color: const Color.fromARGB(150, 255, 255, 255),
            
    );
  }
}