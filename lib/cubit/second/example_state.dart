part of 'example_cubit.dart';

class SecondCubitState {
  int value;
  SecondCubitState({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return {
      'value': value,
    };
  }

  factory SecondCubitState.fromMap(Map<String, dynamic> map) {
    return SecondCubitState(
      value: map['value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SecondCubitState.fromJson(String source) =>
      SecondCubitState.fromMap(json.decode(source));
}
