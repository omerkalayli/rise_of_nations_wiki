import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({required this.text, super.key});

  final String text;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(widget.text),
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.red)),
      ),
    );
  }
}
