import 'package:hive/hive.dart';
import 'package:note_app/models/note_model.dart';

void registerAdapters() {
	Hive.registerAdapter(NoteModelAdapter());
}
