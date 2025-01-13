import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note/add_note_cubit.dart';
import 'package:note_app/cubits/add_note/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 32,
            backgroundColor: color.withOpacity(0.5),
            child: const Icon(Icons.check),
          )
        : CircleAvatar(
            radius: 32,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  var currentIndex = 0;
  List<Color> notePaperColors = [
    const Color(0xFFFBE7C6), // Soft Peach
    const Color(0xFFFFF5E1), // Ivory
    const Color(0xFFB9FBC0), // Mint Green
    const Color(0xFFB2DFDB), // Aqua Teal
    const Color(0xFFDCF8F4), // Pale Aqua
    const Color(0xFFE8EAF6), // Lavender Blue
  ];

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
              BlocProvider.of<AddNoteCubit>(context).color =
                  notePaperColors[index];
              setState(() {});
            },
            child: ColorItem(
              color: notePaperColors[index],
              isActive: currentIndex == index,
            ),
          ),
        );
      },
      itemCount: notePaperColors.length,
    );
  }
}
