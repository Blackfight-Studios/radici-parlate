class GenderEnum {
  final String value;
  const GenderEnum._(this.value);

  static const List<GenderEnum> values = [];

  static GenderEnum fromString(String value) {
    return values.firstWhere((e) => e.value == value);
  }

  @override
  String toString() => value;
}
