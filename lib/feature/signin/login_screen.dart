import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/theme/theme.dart';
import 'login_controller.dart';
import 'widgets/custombutton.dart';
import 'widgets/logincustom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) {
          return GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: Scaffold(
              backgroundColor: backgroundColor,
              resizeToAvoidBottomInset: false,
              body: SafeArea(
                  child: Column(
                children: [
                  SizedBox(
                      height: 300,
                      child: Image.asset('assets/images/logo.jpg')),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                    child: Obx(
                      () => Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Login',
                                style: AppTheme
                                    .lightTheme.textTheme.headlineMedium),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomLoginTextField(
                            context: context,
                            controller: controller.nameController,
                            labelText: "username",
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            obscureText: false,
                            autovalidateMode: controller.validationDisplay
                                ? AutovalidateMode.always
                                : AutovalidateMode.disabled,
                            validator: (email) {
                              return controller.nameValidator(email!);
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CustomLoginTextField(
                            context: context,
                            labelText: "password",
                            obscureText: controller.isObscure,
                            controller: controller.passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            autovalidateMode: controller.validationDisplay
                                ? AutovalidateMode.always
                                : AutovalidateMode.disabled,
                            validator: (password) {
                              return controller.passwordValidator(password!);
                            },
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          CorneredButton(
                            height: 40,
                            color: primaryColor,
                            title: "login",
                            textcolor: backgroundColor,
                            onPress: (() {
                              final userName = controller.nameController.text;
                              final password =
                                  controller.passwordController.text;
                              controller.login(userName, password);
                            }),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
            ),
          );
        });
  }
}
