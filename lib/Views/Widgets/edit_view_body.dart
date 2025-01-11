import 'package:flutter/material.dart';
import 'package:note_app/Views/Widgets/custom_appbar.dart';
import 'package:note_app/Views/Widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: "Title"),
          SizedBox(
            height: 20,
          ),
          CustomTextField(hint: "content", maxLine: 5)
        ],
      ),
    ));
  }
}
