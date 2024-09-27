import 'package:flutter/material.dart';
import 'startScreen/add_image.dart';
import 'startScreen/text_widget.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const AddImage(),
          const SizedBox(
            height: 75,
          ),
          const TextWidget(),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: const ButtonStyle(),
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
          )
        ],
      ),
    );
  }
}
