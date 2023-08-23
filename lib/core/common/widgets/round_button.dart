import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key, this.color, required this.text, this.onPressed});

  final Color? color;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: color ?? const Color.fromARGB(255, 227, 147, 42),
          minimumSize: Size(size.width * .9, size.height * .06),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
