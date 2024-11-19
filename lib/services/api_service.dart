import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:radici_parlate/models/model.dart';

abstract class ApiService<T extends Model> {
  final String base = "";
  String get endpoint;

  Future<List<T>> getAll(String endpoint, T Function(Map<String, dynamic>) fromJson) async {
    var url = Uri.https(base, endpoint);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => fromJson(item)).toList();
    } else {
      throw Exception("Failed to fetch data");
    }
  }

  Future<T> getById(String endpoint, int id, T Function(Map<String, dynamic>) fromJson) async {
    var url = Uri.https(base, endpoint, {"id": id});
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return fromJson(data);
    } else {
      throw Exception("Failed to fetch item");
    }
  }

  Future<void> create(String endpoint, T model) async{
    var url = Uri.https(base, "$endpoint/create");
    final response = await http.post(url,
      headers: {"Content-Type": "application/json"},
      body: model.toJson(),
    );

    if (response.statusCode != 201) {
      throw Exception("Failed to create item");
    }
  }
  
  Future<void> update(String endpoint, T model) async {
    int id = model.id;
    var url = Uri.https(base, "$endpoint/update/$id");
    final response = await http.put(
      url,
      headers: {"Content-Type": "application/json"},
      body: model.toJson(),
    );

    if (response.statusCode != 200) {
      throw Exception("Failed to update item");
    }
  }

  Future<void> delete(String endpoint, int id) async {
    var url = Uri.https(base, '$endpoint/$id');
    final response = await http.delete(url);

    if (response.statusCode != 200) {
      throw Exception("Failed to delete item");
    }
  }

  Future<void> patch(String endpoint, int id, Map<String, dynamic> fieldsToUpdate) async {
    var url = Uri.https(base, '$endpoint/$id');
    final response = await http.patch(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(fieldsToUpdate),
    );

    if (response.statusCode != 200) {
      throw Exception("Failed to update item partially");
    }
  }

  Future<bool> checkExists(String endpoint, Map<String, dynamic> queryParams) async {
    var url = Uri.https(base, "$endpoint/checkExists", queryParams);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return true;
    } else if (response.statusCode == 404) {
      return false;
    } else {
      throw Exception('Failed to check existence');
    }
  }

  Future<List<T>> search(String endpoint, Map<String, dynamic> queryParams, T Function(Map<String, dynamic>) fromJson) async {
    var url = Uri.https(base, "$endpoint/search", queryParams);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => fromJson(item)).toList();
    } else {
      throw Exception('Failed to search data');
    }
  }

  Future<int> count(String endpoint) async {
    var url = Uri.https(base, '$endpoint/count');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['count'] as int;
    } else {
      throw Exception('Failed to fetch count');
    }
  }

  Future<List<T>> getPage(String endpoint, int page, int pageSize, T Function(Map<String, dynamic>) fromJson) async {
    var url = Uri.https(base, "$endpoint/getPage", {'page': page.toString(), 'pageSize': pageSize.toString()});
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => fromJson(item)).toList();
    } else {
      throw Exception('Failed to fetch paginated data');
    }
  }

  Future<void> createBatch(String endpoint, List<T> models) async {
    var url = Uri.https(base, "$endpoint/createBatch");
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: models.map((model) => model.toJson()).toList(),
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to create batch items');
    }
  }

  Future<void> deleteBatch(String endpoint, List<int> ids) async {
    var url = Uri.https(base, '$endpoint/deleteBatch');
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: {'ids': ids},
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to delete batch items');
    }
  }


}