import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hydrated_bloc_issue/cubit/second/example_cubit.dart';
import 'package:flutter_hydrated_bloc_issue/screens/second_screen.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: NewWidget(),
        child: TextButton(
          child: const Text('Button'),
          onPressed: () {
            print('BlocOverrides.current in onPressed');
            print(BlocOverrides.current); // prints null
            print(Zone.current); // inside custom zone
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const SecondScreen()));
            BlocProvider.of<ExampleCubit>(context).someMethod();
          },
        ),
      ),
    );
  }
}
