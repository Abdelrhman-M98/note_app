import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Views/Widgets/custom_button.dart';
import 'package:note_app/Views/Widgets/custom_text_field.dart';
import 'package:note_app/cubits/add_note/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> key = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: "Content",
            maxLine: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            onTap: () {
              if (key.currentState!.validate()) {
                key.currentState!.save();
                var noteModel = NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    date: DateTime.now().toString(),
                    color: Colors.lightBlue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
