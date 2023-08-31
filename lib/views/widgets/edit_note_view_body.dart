import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/cutom_text_filed.dart';

class EditNotViewBody extends StatelessWidget {
  const EditNotViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFiled(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
