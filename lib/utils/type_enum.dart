class TypeEnum {
  final String value;
  const TypeEnum._(this.value);

  static const sostantivo = TypeEnum._('sostantivo');
  static const verbo = TypeEnum._('verbo');
  static const aggettivo = TypeEnum._('aggettivo');
  static const avverbio = TypeEnum._('avverbio');
  static const pronome = TypeEnum._('pronome');
  static const preposizione = TypeEnum._('preposizione');
  static const congiunzione = TypeEnum._('congiunzione');
  static const interiezione = TypeEnum._('interiezione');
  static const articolo = TypeEnum._('articolo');

  static const List<TypeEnum> values = [
    sostantivo,
    verbo,
    aggettivo,
    avverbio,
    pronome,
    preposizione,
    congiunzione,
    interiezione,
    articolo,
  ];

  static TypeEnum fromString(String value) {
    return values.firstWhere((e) => e.value == value);
  }

  @override
  String toString() => value;
}
