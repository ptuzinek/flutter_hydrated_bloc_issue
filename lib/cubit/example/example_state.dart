part of 'example_cubit.dart';

class ExampleCubitState {
  int value;
  ExampleCubitState({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return {
      'value': value,
    };
  }

  factory ExampleCubitState.fromMap(Map<String, dynamic> map) {
    return ExampleCubitState(
      value: map['value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ExampleCubitState.fromJson(String source) =>
      ExampleCubitState.fromMap(json.decode(source));
}
