import 'package:flutter/material.dart';
import 'package:note_app/Views/Widgets/custome_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: NoteIteam(),
        );
      },
    );
  }
}
