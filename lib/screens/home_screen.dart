import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hydrated_bloc_issue/cubit/example/example_cubit.dart';
import 'package:flutter_hydrated_bloc_issue/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Button'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const SecondScreen()));
            BlocProvider.of<ExampleCubit>(context).someMethod();
          },
        ),
      ),
    );
  }
}
