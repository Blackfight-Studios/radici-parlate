import 'package:radici_parlate/services/api_service.dart';

import '../models/user_model.dart';

class UserApiService extends ApiService<UserModel> {
  @override
  String get endpoint => "/users";

  Future<List<UserModel>> getAllUsers() async {
    return getAll(endpoint, (json) => UserModel.fromJson(json));
  }

  Future<UserModel> getUserById(int id) async {
    return getById(endpoint, id, (json) => UserModel.fromJson(json));
  }

  Future<void> createUser(UserModel user) async {
    await create(endpoint, user);
  }

  Future<void> updateUser(UserModel user) async {
    await create(endpoint, user);
  }

  Future<void> deleteUser(int id) async {
    await delete(endpoint, id);
  }

  Future<void> patchUser(int id, Map<String, dynamic> fieldsToUpdate) async {
    await patch(endpoint, id, fieldsToUpdate);
  }

  Future<bool> checkUserExists(Map<String, dynamic> queryParams) async {
    return await checkExists(endpoint, queryParams);
  }

  Future<List<UserModel>> searchUser(Map<String, dynamic> queryParams) async {
    return await search(endpoint, queryParams, (json) => UserModel.fromJson(json));
  }

  Future<int> countUsers() async {
    return await count(endpoint);
  }

  Future<List<UserModel>> getUsersPage(int page, int pageSize) async {
    return await getPage(endpoint, page, pageSize, (json) => UserModel.fromJson(json));
  }

  Future<void> createUserBatch(List<UserModel> users) async {
    return await createBatch(endpoint, users);
  }

  Future<void> deleteUserBatch(List<int> ids) async {
    return await deleteBatch(endpoint, ids);
  }
}