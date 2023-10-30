import 'package:flutter/material.dart';
import '../utils/theme/theme.dart';

class SubHeading extends StatelessWidget {
  const SubHeading({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(title, style: AppTheme.lightTheme.textTheme.titleLarge),
    );
  }
}
