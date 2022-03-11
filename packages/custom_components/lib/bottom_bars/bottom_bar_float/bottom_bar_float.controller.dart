import 'package:flutter/material.dart';
import 'package:get/get.dart';
//git

///[========================================================== MODELS ===========================================================]
///[=============================================================================================================================]
class BottomBarFloatItem {
  var id;
  String btnText;
  IconData btnIcon;
  BottomBarFloatImgItem btnImage;
  Widget pageWidget;
  BottomBarFloatItem({
    @required this.id,
    this.btnIcon,
    this.btnImage,
    this.btnText,
    @required this.pageWidget,
  }) {
    if (btnImage != null && btnIcon != null) throw ("Não pode ser passado um btnIcon junto com btnImage");
  }
}

class BottomBarFloatImgItem {
  Image btnImage;
  Image btnImageSelected;
  BottomBarFloatImgItem({
    @required this.btnImage,
    @required this.btnImageSelected,
  });
}

///[======================================================= MASTER CLASS ========================================================]
///[=============================================================================================================================]

class BottomBarFloatController extends GetxController {
  //
  ///[====================== VARIAVEIS ======================]
  int selectedIndex = 1;

  List<Widget> childrenList = List();

  Color selectedItemColor;

  BottomBarFloatItem btnCenter;
  BottomBarFloatItem btnLeft;
  BottomBarFloatItem btnRight;

  ///[====================== CONSTRUTOR ======================]

  BottomBarFloatController({
    @required this.selectedItemColor,
    this.btnCenter,
    this.btnRight,
    this.btnLeft,
  }) {
    mount();
  }

  ///[================================================== METODOS ==================================================]
  ///[=============================================================================================================]

  ///[----------------------------- ON TAP ITEM ----------------------------]
  ///
  void onItemTapped(int index) {
    selectedIndex = index;
    update();
  }

  ///[-------------------------------- MOUNT -------------------------------]
  ///
  Future mount() async {
    childrenList.add(btnLeft.pageWidget);
    childrenList.add(btnCenter.pageWidget);
    childrenList.add(btnRight.pageWidget);
    return "ok";
  }
}
