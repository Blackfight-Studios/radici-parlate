import 'package:radici_parlate/services/api_service.dart';

import '../models/word_model.dart';

class WordApiService extends ApiService<WordModel> {
  @override
  String get endpoint => "/words";

  Future<List<WordModel>> getAllWords() async {
    return getAll(endpoint, (json) => WordModel.fromJson(json));
  }

  Future<WordModel> getWordById(int id) async {
    return getById(endpoint, id, (json) => WordModel.fromJson(json));
  }

  Future<void> createWord(WordModel word) async {
    await create(endpoint, word);
  }

  Future<void> updateWord(WordModel word) async {
    await create(endpoint, word);
  }

  Future<void> deleteWord(int id) async {
    await delete(endpoint, id);
  }

  Future<void> patchWord(int id, Map<String, dynamic> fieldsToUpdate) async {
    await patch(endpoint, id, fieldsToUpdate);
  }

  Future<bool> checkWordExists(Map<String, dynamic> queryParams) async {
    return await checkExists(endpoint, queryParams);
  }

  Future<List<WordModel>> searchWord(Map<String, dynamic> queryParams) async {
    return await search(endpoint, queryParams, (json) => WordModel.fromJson(json));
  }

  Future<int> countWords() async {
    return await count(endpoint);
  }

  Future<List<WordModel>> getWordsPage(int page, int pageSize) async {
    return await getPage(endpoint, page, pageSize, (json) => WordModel.fromJson(json));
  }

  Future<void> createWordBatch(List<WordModel> words) async {
    return await createBatch(endpoint, words);
  }

  Future<void> deleteWordBatch(List<int> ids) async {
    return await deleteBatch(endpoint, ids);
  }
}