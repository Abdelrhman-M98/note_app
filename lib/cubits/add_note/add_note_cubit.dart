import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note/add_note_state.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  bool isLoading = false;

  addNote(NoteModel note) async {
    isLoading = true;
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      isLoading = false;
      emit(AddNoteSuccess());
      await noteBox.add(note);
    } catch (e) {
      isLoading = false;
      AddNoteFailure(e.toString());
    }
  }
}
