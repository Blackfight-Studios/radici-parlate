class GenderEnum {
  final String value;
  const GenderEnum._(this.value);

  static const maschile = GenderEnum._('maschile');
  static const femminile = GenderEnum._('femminile');
  static const neutro = GenderEnum._('neutro');

  static const List<GenderEnum> values = [
    maschile,
    femminile,
    neutro,
  ];

  static GenderEnum fromString(String value) {
    return values.firstWhere((e) => e.value == value);
  }

  @override
  String toString() => value;
}
