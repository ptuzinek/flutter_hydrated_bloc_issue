import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hydrated_bloc_issue/cubit/example/example_cubit.dart';
import 'package:flutter_hydrated_bloc_issue/screens/home_screen.dart';
import 'package:flutter_services_binding/flutter_services_binding.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  FlutterServicesBinding.ensureInitialized();

  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  HydratedBlocOverrides.runZoned(
    () => runApp(
      const MyApp(),
    ),
    storage: storage,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExampleCubit>(
      // lazy: false, // this solves problem
      create: (_) => ExampleCubit(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
