import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoomView extends StatelessWidget {
  const RoomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
            ),
            const SizedBox(height: 20),
            Center(child: Text("Room")),
          ],
        ),
      ),
    );
  }
}
