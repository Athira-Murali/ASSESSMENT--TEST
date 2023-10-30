import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/theme/theme.dart';
import 'audit_controller.dart';

class AuditScreen extends StatelessWidget {
  const AuditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuditController>(
      init: AuditController(),
      builder: (controller) {
        final responseData = controller.responseData;
        final auditListData = controller.auditListData;
        return Scaffold(
          body: Column(
            children: [
              // Obx(
              //   () => Expanded(
              //     child: ListView.builder(
              //       itemCount: responseData.length,
              //       itemBuilder: (context, index) {
              //         final item = responseData[index];
              //         return ListTile(
              //           title: Text(item['Item']),
              //           subtitle: Text('Count: ${item['Count']}'),
              //         );
              //       },
              //     ),
              //   ),
              // ),

              Obx(
                () => Expanded(
                  child: ListView.builder(
                    itemCount: auditListData.length,
                    itemBuilder: (context, index) {
                      final item = auditListData[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: secondaryshadeColor,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.black12,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                width: 200,
                                                decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  border: Border.all(
                                                    width: 2,
                                                    color: secondaryLightColor,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.horizontal(
                                                    left: Radius.circular(50),
                                                    right: Radius.circular(10),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    item['condutedByDeptName'] !=
                                                            null
                                                        ? item[
                                                            'condutedByDeptName']
                                                        : "",
                                                    style: AppTheme.lightTheme
                                                        .textTheme.bodyLarge,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                item['auditLocation'] != null
                                                    ? item['auditLocation']
                                                    : "audit Location",
                                                style: AppTheme.lightTheme
                                                    .textTheme.labelSmall,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  width: 100,
                                                  child: Text(
                                                    'employe Name',
                                                    style: AppTheme.lightTheme
                                                        .textTheme.labelLarge
                                                        ?.copyWith(
                                                            color:
                                                                secondaryMediumColor),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  item['conductedByEmpName'] !=
                                                          null
                                                      ? item[
                                                          'conductedByEmpName']
                                                      : "",
                                                  style: AppTheme.lightTheme
                                                      .textTheme.bodyLarge,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Duration',
                                          style: AppTheme
                                              .lightTheme.textTheme.labelLarge
                                              ?.copyWith(
                                                  color: secondaryMediumColor)),
                                      Text(
                                        controller.formatDate(
                                            item['startDate'] != null
                                                ? item['startDate']
                                                : ""),
                                        style: AppTheme
                                            .lightTheme.textTheme.bodyLarge,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
