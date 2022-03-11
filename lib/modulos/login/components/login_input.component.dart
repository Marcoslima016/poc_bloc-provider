import 'package:custom_components/lib.imports.dart';
import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  bool isObscure;
  String hintText;
  TextEditingController textController = TextEditingController();
  Color borderColor = Colors.grey[700];
  double keyboardPadding;

  LoginInput({
    @required this.isObscure,
    @required this.hintText,
    this.keyboardPadding = 0,
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
          hintTextColor: Colors.grey[400],
          hintText: hintText,
          hintTextSize: w * 5.2,
          hintTextStroke: 3.0,
        ),
        borderStyle: CustomBorderStyle(
          borderStroke: 1.2,
          enableBorderColor: Colors.grey[400],
          errorBorderColor: Colors.red,
          focusedBorderColor: borderColor,
        ),
        borderRadius: 8,
        // icon: icon,
        keyboardPadding: this.keyboardPadding,
      ),
    );
  }
}
