import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  fetchAllNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = noteBox.values.toList();

      emit(NoteSuccess(notes));
    } catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
