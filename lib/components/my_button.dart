import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 100.0),
        decoration: BoxDecoration(
          color: Colors.indigo[600],
          borderRadius: BorderRadius.circular(35),
        ),
        child: const Center(
          child: Text(
            "Regístrate",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}


class MyButtonContrast extends StatelessWidget {
  final Function()? onTap;

  const MyButtonContrast({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 100.0),
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(35),
        ),
        child: const Center(
          child: Text(
            "Saltar por ahora",
            style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
