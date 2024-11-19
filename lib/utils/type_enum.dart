class TypeEnum {
  final String value;
  const TypeEnum._(this.value);

  static const List<TypeEnum> values = [];

  static TypeEnum fromString(String value) {
    return values.firstWhere((e) => e.value == value);
  }

  @override
  String toString() => value;
}
