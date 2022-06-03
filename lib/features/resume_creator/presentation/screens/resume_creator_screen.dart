import 'package:doors/features/resume_creator/presentation/resume_creators_ui/basic_resume_creator.dart';
import 'package:flutter/material.dart';

class ResumeCreatorScreen extends StatelessWidget {
  static const routeName = '/resume-creator';
  const ResumeCreatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BasicResumeCreator();
  }
}
