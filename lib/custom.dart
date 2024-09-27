import 'package:flutter/material.dart';

class Custom extends StatefulWidget
{
  const Custom({super.key});

  @override
  State<Custom> createState()
  {
    return _Custom();
  }
  
}

class _Custom  extends State<Custom>
{
  @override
  Widget build(BuildContext context)
  {
    return const Center(
      child: Text("Sabbir"),
    );
  }
}