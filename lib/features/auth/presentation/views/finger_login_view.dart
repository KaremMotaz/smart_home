import 'package:flutter/material.dart';

class FingerLoginView extends StatelessWidget {
  const FingerLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.white],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
