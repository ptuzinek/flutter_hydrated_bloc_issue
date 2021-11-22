import 'dart:convert';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'example_state.dart';

class ExampleCubit extends HydratedCubit<SecondCubitState> {
  ExampleCubit() : super(SecondCubitState(value: 0));

  void someMethod() {}

  @override
  SecondCubitState? fromJson(Map<String, dynamic> json) {
    return SecondCubitState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(SecondCubitState state) {
    return state.toMap();
  }
}
