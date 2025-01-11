import 'package:hive/hive.dart';
import 'package:note_app/hive_helper/hive_types.dart';
import 'package:note_app/hive_helper/hive_adapters.dart';
import 'package:note_app/hive_helper/fields/note_model_fields.dart';


part 'note_model.g.dart';


@HiveType(typeId: HiveTypes.noteModel, adapterName: HiveAdapters.noteModel)
class NoteModel extends HiveObject{
	@HiveField(NoteModelFields.title)
  final String title;
	@HiveField(NoteModelFields.subTitle)
  final String subTitle;
	@HiveField(NoteModelFields.date)
  final String date;
	@HiveField(NoteModelFields.color)
  final int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}