import 'package:custom_components/lib.imports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../lib.imports.dart';

class LoginInput extends StatelessWidget {
  bool isObscure;
  String hintText;
  TextEditingController textController = TextEditingController();
  Color? borderColor = Colors.grey[850];
  double keyboardPadding;
  Icon? suffixIcon;
  String textValidate;

  LoginInput({
    required this.isObscure,
    required this.hintText,
    required this.textController,
    this.suffixIcon,
    this.keyboardPadding = 0,
    this.textValidate = "não pode ser vazio",
  });

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;

    return TextFieldOutline(
      preferences: TextFieldPreferences(
        txtValidate: "Esse campo deve ser preenchido",
        width: w * 100,
        isObscure: isObscure,
        textStyle: TextStyleModel(
          textColor: Colors.grey[800],
          textSize: w * 6,
        ),
        // textStyle: ,

        textFieldController: textController,
        hintText: HintTextModel(
          hintTextColor: Colors.grey[700],
          hintText: hintText,
          hintTextSize: w * 4.1,
          hintTextStroke: 3.0,
        ),
        borderStyle: CustomBorderStyle(
          borderStroke: 1.2,
          enableBorderColor: Colors.grey,
          errorBorderColor: Colors.red,
          focusedBorderColor: borderColor,
        ),
        borderRadius: 5.4,
        // icon: icon,
        keyboardPadding: this.keyboardPadding,
        icon: suffixIcon,
        focusedIconsColor: Get.find<AppController>().style.primaryColor,
        contentPadding: EdgeInsets.only(top: h * 2.4, bottom: h * 2.4, left: w * 3.8),
        validation: NotEmptyValidation(onValidationFail: (value) {}, validationFailTxt: textValidate),
      ),
    );
  }
}
