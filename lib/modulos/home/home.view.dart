import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.imports.dart';

class HomeView extends StatelessWidget {
  HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: BlocProvider(
        create: (context) => controller..init(),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: controller.increment,
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
            BlocBuilder<HomeController, HomeState>(
              builder: (context, HomeState state) => Center(child: Text(state.count.toString())),
            ),
          ],
        ),
      ),
    );
  }
}
