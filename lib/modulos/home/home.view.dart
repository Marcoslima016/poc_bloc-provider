import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: <Widget>[
          //
          GestureDetector(
            onTap: () {
              // controller.getUserData();
              var teste = context.read<HomeController>();
              var point = "";
              context.read<HomeController>().getUserData();
            },
            child: Container(
              width: 100,
              height: 40,
              color: Colors.blue,
              child: Text(
                "Testar!",
              ),
            ),
          ),

          Text("Valor atual: "),
          BlocBuilder<HomeController, User?>(
            builder: (context, User? state) {
              return Center(
                child: Text(
                  state!.nome.toString(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
