import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/eidt_note_view_body.dart';

class EidtNoteView extends StatelessWidget {
  const EidtNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EidtNotViewBody(),
    );
  }
}
