import 'package:flutter/material.dart';
import 'package:smart_home/features/home/presentation/widgets/all_rooms_header.dart';
import 'all_rooms_list_view.dart';

class AllRoomsSection extends StatelessWidget {
  const AllRoomsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [AllRoomsHeader(), SizedBox(height: 20), AllRoomsListView()],
    );
  }
}
