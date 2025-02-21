import 'package:flutter/material.dart';
import 'package:wed_for_weddings/core/common/animations/animate_do.dart';
import 'package:wed_for_weddings/core/common/widgets/custom_text_field.dart';
import 'package:wed_for_weddings/core/extensions/context_extension.dart';
import 'package:wed_for_weddings/core/language/lang_keys.dart';
import 'package:wed_for_weddings/core/utils/app_regex.dart';

class SignUpTextForm extends StatefulWidget {
  const SignUpTextForm({super.key});

  @override
  State<SignUpTextForm> createState() => _SignUpTextFormState();
}
bool isShowPassword = true;

class _SignUpTextFormState extends State<SignUpTextForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      //  key: _bloc.formKey,
      child: Column(
        children: [
          //name
          CustomFadeInRight(
            duration: 600,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.fullName),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty|| value.length <4) {
                  return context.translate(LangKeys.validName);
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 10),
          //email
          CustomFadeInRight(
            duration: 600,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.email),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!AppRegex.isEmailValid('')) {
                  return context.translate(LangKeys.validEmail);
                }
                return null;
              },
            ),
          ),
           const SizedBox(height: 10),
          //Password
          CustomFadeInRight(
            duration: 600,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.password),
              keyboardType: TextInputType.visiblePassword,
              obscureText: isShowPassword,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return context.translate(LangKeys.validPasswrod);
                }
                return null;
              },
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: Icon(
                  isShowPassword ? Icons.visibility_off : Icons.visibility,
                  color: context.color.textColor,
                ),
              ),
            ),
          ),
           const SizedBox(height: 10),
           //phone number
           CustomFadeInRight(
            duration: 600,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.phone),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty || value.length == 11) {
                  return context.translate(LangKeys.validPhone);
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
