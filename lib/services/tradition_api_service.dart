import 'package:radici_parlate/services/api_service.dart';

import '../models/tradition_model.dart';

class TraditionApiService extends ApiService<TraditionModel> {
  @override
  String get endpoint => "/traditions";

  Future<List<TraditionModel>> getAllTraditions() async {
    return getAll(endpoint, (json) => TraditionModel.fromJson(json));
  }

  Future<TraditionModel> getTraditionById(int id) async {
    return getById(endpoint, id, (json) => TraditionModel.fromJson(json));
  }

  Future<void> createTradition(TraditionModel tradition) async {
    await create(endpoint, tradition);
  }

  Future<void> updateTradition(TraditionModel tradition) async {
    await create(endpoint, tradition);
  }

  Future<void> deleteTradition(int id) async {
    await delete(endpoint, id);
  }

  Future<void> patchTradition(int id, Map<String, dynamic> fieldsToUpdate) async {
    await patch(endpoint, id, fieldsToUpdate);
  }

  Future<bool> checkTraditionExists(Map<String, dynamic> queryParams) async {
    return await checkExists(endpoint, queryParams);
  }

  Future<List<TraditionModel>> searchTradition(Map<String, dynamic> queryParams) async {
    return await search(endpoint, queryParams, (json) => TraditionModel.fromJson(json));
  }

  Future<int> countTraditions() async {
    return await count(endpoint);
  }

  Future<List<TraditionModel>> getTraditionsPage(int page, int pageSize) async {
    return await getPage(endpoint, page, pageSize, (json) => TraditionModel.fromJson(json));
  }

  Future<void> createTraditionBatch(List<TraditionModel> traditions) async {
    return await createBatch(endpoint, traditions);
  }

  Future<void> deleteTraditionBatch(List<int> ids) async {
    return await deleteBatch(endpoint, ids);
  }

}