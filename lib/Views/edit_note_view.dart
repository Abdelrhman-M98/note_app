import 'package:flutter/material.dart';
import 'package:note_app/Views/Widgets/edit_view_body.dart';
import 'package:note_app/models/note_model.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return EditNoteViewBody(
      note: note,
    );
  }
}
