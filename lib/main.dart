import 'package:flutter/material.dart';
import 'package:note_app/Views/note_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const NotesView(),
    );
  }

  // This widget is the root of your application.
}
