import 'package:radici_parlate/services/api_service.dart';

import '../models/role_model.dart';

class RoleApiService extends ApiService<RoleModel> {
  @override
  String get endpoint => "/roles";

  Future<List<RoleModel>> getAllRoles() async {
    return getAll(endpoint, (json) => RoleModel.fromJson(json));
  }

  Future<RoleModel> getRoleById(int id) async {
    return getById(endpoint, id, (json) => RoleModel.fromJson(json));
  }

  Future<void> createRole(RoleModel role) async {
    await create(endpoint, role);
  }

  Future<void> updateRole(RoleModel role) async {
    await create(endpoint, role);
  }

  Future<void> deleteRole(int id) async {
    await delete(endpoint, id);
  }

  Future<void> patchRole(int id, Map<String, dynamic> fieldsToUpdate) async {
    await patch(endpoint, id, fieldsToUpdate);
  }

  Future<bool> checkRoleExists(Map<String, dynamic> queryParams) async {
    return await checkExists(endpoint, queryParams);
  }

  Future<List<RoleModel>> searchRole(Map<String, dynamic> queryParams) async {
    return await search(endpoint, queryParams, (json) => RoleModel.fromJson(json));
  }

  Future<int> countRoles() async {
    return await count(endpoint);
  }

  Future<List<RoleModel>> getRolesPage(int page, int pageSize) async {
    return await getPage(endpoint, page, pageSize, (json) => RoleModel.fromJson(json));
  }

  Future<void> createRoleBatch(List<RoleModel> roles) async {
    return await createBatch(endpoint, roles);
  }

  Future<void> deleteRoleBatch(List<int> ids) async {
    return await deleteBatch(endpoint, ids);
  }
}