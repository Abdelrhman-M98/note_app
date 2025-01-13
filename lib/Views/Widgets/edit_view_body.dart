import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Views/Widgets/custom_appbar.dart';
import 'package:note_app/Views/Widgets/custom_text_field.dart';
import 'package:note_app/Views/Widgets/edit_note_color_list.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: widget.note.subTitle,
            maxLine: 5,
            onChanged: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: EditNoteColorList(
                note: widget.note,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
