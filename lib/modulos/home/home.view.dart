import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../lib.imports.dart';
import 'home.imports.dart';

class HomeView extends StatelessWidget {
  HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeController(),
      child: WidgetTeste(),
    );
  }
}

class WidgetTeste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 100;
    double w = MediaQuery.of(context).size.width / 100;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Get.find<AppController>().style.secundaryColor,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: <Widget>[
          BlocBuilder<HomeController, User?>(
            builder: (context, User? state) {
              return Positioned(
                top: h * 35,
                child: Container(
                  width: w * 100,
                  child: Center(
                    child: Container(
                      width: w * 65,
                      height: h * 10,
                      decoration: BoxDecoration(
                        // color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7.2),
                        border: Border.all(
                          color: (Colors.grey[400])!,
                          width: 2,
                        ),
                      ),
                      child: Center(child: Text(state!.nome.toString())),
                    ),
                  ),
                ),
              );
            },
          ),

          //=============================== BOTAO ===============================

          Positioned(
            bottom: h * 6,
            child: Container(
              width: w * 100,
              child: Center(
                child: Container(
                  height: h * 11,
                  width: w * 84,
                  child: ElevatedButton(
                    child: Text(
                      'Exibir nome do usuário',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: () {
                      context.read<HomeController>().getUserData();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Get.find<AppController>().style.primaryColor,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
