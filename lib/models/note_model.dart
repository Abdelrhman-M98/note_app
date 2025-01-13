import 'package:hive/hive.dart';
import 'package:note_app/hive_helper/hive_types.dart';
import 'package:note_app/hive_helper/hive_adapters.dart';
import 'package:note_app/hive_helper/fields/note_model_fields.dart';

part 'note_model.g.dart';

@HiveType(typeId: HiveTypes.noteModel, adapterName: HiveAdapters.noteModel)
class NoteModel extends HiveObject {
  @HiveField(NoteModelFields.title)
  String title;
  @HiveField(NoteModelFields.subTitle)
  String subTitle;
  @HiveField(NoteModelFields.date)
  final String date;
  @HiveField(NoteModelFields.color)
  int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}
