import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note/add_note_state.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = const Color(0xFFFBE7C6);
  bool isLoading = false;

  addNote(NoteModel note) async {
    note.color = color.value;
    isLoading = true;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
      isLoading = false;
      emit(AddNoteSuccess());
    } catch (e) {
      isLoading = false;
      emit(AddNoteFailure(e.toString()));
    }
  }
}
