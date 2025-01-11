import 'package:flutter/material.dart';
import 'package:note_app/Views/Widgets/custom_appbar.dart';
import 'package:note_app/Views/Widgets/note_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Note',
            icon: Icons.search,
          ),
          Expanded(
            child: NoteListView(),
          ),
        ],
      ),
    );
  }
}
