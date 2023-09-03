import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes%20_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/cutom_text_filed.dart';
import 'package:notes_app/views/widgets/edit_colors_list.dart';

class EditNotViewBody extends StatefulWidget {
  const EditNotViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNotViewBody> createState() => _EditNotViewBodyState();
}

class _EditNotViewBodyState extends State<EditNotViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextFiled(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          EditNoteColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
