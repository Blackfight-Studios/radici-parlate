import 'dart:convert';

import 'package:radici_parlate/models/model.dart';

abstract class ContributionModel extends Model{
  final int changedBy;
  final List<String> fieldName;
  final Map<String, dynamic> oldValues;
  final Map<String, dynamic> newValues;
  final DateTime changeDate;


  ContributionModel({
    required super.id,
    required this.changedBy,
    required this.fieldName,
    required this.oldValues,
    required this.newValues,
    required this.changeDate,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "changed_by": changedBy,
      "field_name": fieldName,
      "old_values": jsonEncode(oldValues),
      "new_values": jsonEncode(newValues),
      "change_date": changeDate.toIso8601String(),
    };
  }
}