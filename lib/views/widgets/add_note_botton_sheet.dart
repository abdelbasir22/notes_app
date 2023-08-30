import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/cutom_text_filed.dart';

import 'custom_botton.dart';

class AddNoteBottonSheet extends StatelessWidget {
  const AddNoteBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
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
            SizedBox(
              height: 90,
            ),
            CustomBotton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
