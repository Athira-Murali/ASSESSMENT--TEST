import 'package:assessment_test/feature/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import '../../../utils/theme/theme.dart';
import '../data/general_listitem.dart';

class SupportSettings extends StatelessWidget {
  final ProfileController controller;
  const SupportSettings({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryshadeColor,
      ),
      child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(Icons.privacy_tip),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Text(
                          SupportListItem().supportListItem[index].stringText!,
                          overflow: TextOverflow.ellipsis,
                          style: AppTheme.lightTheme.textTheme.bodyMedium
                              ?.copyWith(color: secondaryColor),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: Icon(Icons.swipe_right_alt_rounded))
                    ],
                  ),
                ),
              ),
          separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(bottom: 7, right: 15, left: 15),
                child: Divider(height: 1, color: secondaryLightColor),
              ),
          itemCount: SupportListItem().supportListItem.length),
    );
  }
}
