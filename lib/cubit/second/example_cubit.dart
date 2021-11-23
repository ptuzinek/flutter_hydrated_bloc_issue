import 'dart:convert';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'example_state.dart';

class ExampleCubit extends HydratedCubit<ExampleCubitState> {
  ExampleCubit() : super(ExampleCubitState(value: 0));

  void someMethod() {}

  @override
  ExampleCubitState? fromJson(Map<String, dynamic> json) {
    return ExampleCubitState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(ExampleCubitState state) {
    return state.toMap();
  }
}
