import 'package:assessment_test/feature/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/theme/theme.dart';

class ProfileSection extends StatelessWidget {
  final ProfileController controller;
  const ProfileSection({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      color: secondaryshadeColor,
      child: InkWell(
        focusColor: primaryColor,
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          //Get.to(const EditProfileScreen());
        },
        highlightColor: secondaryMediumColor.withOpacity(0.4),
        splashColor: secondaryLightColor.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Obx(
            () => Row(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 0.25,
                      color: primaryColor,
                    ),
                  ),
                  child: Image.asset(
                    "assets/images/account.png",
                    width: 60,
                    height: 60,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Eduardo Camavinga",
                        style: AppTheme.lightTheme.textTheme.titleMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'eduardo@gmail.com',
                        style: AppTheme.lightTheme.textTheme.labelMedium,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Icon(Icons.edit)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
