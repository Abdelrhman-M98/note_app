import 'package:flutter/material.dart';
import 'package:note_app/Views/Widgets/note_bottom_sheet.dart';
import 'package:note_app/Views/Widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NoteViewBody(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          backgroundColor: Colors.cyanAccent,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
