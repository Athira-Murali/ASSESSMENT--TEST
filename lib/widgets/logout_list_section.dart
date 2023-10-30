import 'package:assessment_test/feature/profile/profile_controller.dart';
import 'package:flutter/material.dart';

import '../utils/theme/theme.dart';

class LogoutListSection extends StatelessWidget {
  final ProfileController controller;
  const LogoutListSection({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryshadeColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const SizedBox(
              width: 18,
            ),
            Icon(Icons.logout),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Text(
                "Log out",
                style: AppTheme.lightTheme.textTheme.bodyMedium
                    ?.copyWith(color: errorColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
