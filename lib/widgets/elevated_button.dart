import 'package:flutter/material.dart';

class ElvButton extends StatelessWidget {

  final onPress;

  const ElvButton({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: SizedBox(
        height: 56,
        width: 320,
        child: ElevatedButton(
          child: Text(
            "Get Started",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Sora"
            ),
          ),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Color(0xFFC67C4E)),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              )
            )
          ),
          onPressed: onPress
        ),
      ),
    );
  }
}