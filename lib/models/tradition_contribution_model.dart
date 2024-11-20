import 'package:radici_parlate/models/contribution_model.dart';

class TraditionContributionModel extends ContributionModel {
  final int traditionId;


  TraditionContributionModel({
    required super.id,
    required super.changedBy,
    required super.fieldName,
    required super.oldValues,
    required super.newValues,
    required super.changeDate,
    required this.traditionId
  });

  factory TraditionContributionModel.fromJson(Map<String, dynamic> json){
    return TraditionContributionModel(
        id: json["id"] as int,
        traditionId: json["tradition_id"] as int,
        changedBy: json["changed_by"] as int,
        fieldName: json["field_name"] as List<String>,
        oldValues: json["old_values"] as Map<String, dynamic>,
        newValues: json["new_values"] as Map<String, dynamic>,
        changeDate: DateTime.parse(json["change_date"] as String),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final id = <String, dynamic>{"tradition_id": traditionId};
    final json = super.toJson();
    json.addEntries(id.entries);
    return json;
  }

}