// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:note_app/Views/Widgets/colors_list_view.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

class EditNoteColorList extends StatefulWidget {
  EditNoteColorList({super.key, required this.note});
  NoteModel note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColors[index].value;
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isActive: currentIndex == index,
            ),
          ),
        );
      },
      itemCount: kColors.length,
    );
  }
}
