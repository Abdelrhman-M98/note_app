part of 'notes_cubit_cubit.dart';

@immutable
abstract class NotesCubitState {}

class NotesCubitInitial extends NotesCubitState {}

class NoteInitial extends NotesCubitState {}

class NoteLoading extends NotesCubitState {}

class NoteSuccess extends NotesCubitState {
  final List<NoteModel> notes;
  NoteSuccess(this.notes);
}

class NoteFailure extends NotesCubitState {
  final String errorMessage;
  NoteFailure(this.errorMessage);
}
