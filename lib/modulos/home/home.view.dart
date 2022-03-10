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
      //----------------------------------- BLOC PROVIDER --------------------------------
      body: BlocProvider(
        // create: (context) => controller,
        // create: (context) => controller..init(),
        create: (context) => HomeController(),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            //
            // GestureDetector(
            //   onTap: () {
            //     controller.increment();
            //     // context.read<HomeController>().increment();
            //   },
            //   child: Container(
            //     width: 100,
            //     height: 40,
            //     color: Colors.blue,
            //     child: Text(
            //       "Testar!",
            //     ),
            //   ),
            // ),
            SizedBox(height: 20),
            //
            Text("Valor atual: "),

            //------------------------------- BLOC CONSUMER -----------------------------

            // BlocConsumer<HomeController, HomeState>(
            //   listener: (context, state) {
            //     var point = state;
            //   },
            //   builder: (context, state) {
            //     return Column(
            //       children: [
            //         Center(child: Text(state.count.toString())),
            //       ],
            //     );
            //   },
            // ),

            //------------------------------- BLOC BUILDER -----------------------------

            BlocBuilder<HomeController, HomeState>(
              builder: (context, HomeState state) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.increment();
                        // context.read<HomeController>().increment();
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
                    Center(child: Text(state.count.toString())),
                  ],
                );
              },
            ),

            //
          ],
        ),
      ),
    );
  }
}
