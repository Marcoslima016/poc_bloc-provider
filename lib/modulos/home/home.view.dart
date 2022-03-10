import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.imports.dart';

class HomeView extends StatelessWidget {
  HomeCubit controller = HomeCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      //----------------------------------- BLOC PROVIDER --------------------------------
      body: BlocProvider(
        create: (context) => HomeCubit(),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),

            //
            Text("Valor atual: "),

            //------------------------------- BLOC BUILDER -----------------------------

            BlocBuilder<HomeCubit, int>(
              builder: (context, int state) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // controller.increment();
                        context.read<HomeCubit>().increment();
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
                    Center(child: Text(state.toString())),
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
