import 'package:flutter_clean_architecture_bloc/app/global_data/storage_service.dart';
import 'package:flutter_clean_architecture_bloc/feature/landing/data/models/user_model.dart';
import 'package:get/get.dart';

class AuthStorageService extends GetxController{
  final LocalStorage _storage;

  AuthStorageService(this._storage);
  static const _userTokenKey = 'USER_TOKEN';
  static const _userKey = 'USER';
  static AuthStorageService get to => Get.find();


  Future<void> saveToken(String token) async {
    await _storage.write(_userTokenKey, token);
  }

  String? getUserToken() {
    var token = _storage.read<String>(_userTokenKey);
    if (token == null) return null;
    return token;
  }
  Future<void> saveUserModel<UserModel>(UserModel user) async {
    await _storage.write(_userKey, user);
  }

  UserModel? getUserModel() {
    var user = _storage.read<Map<String, dynamic>>(_userKey)
    as Map<String, dynamic>?;

    if (user == null) return null;
    return UserModel.fromJson(user);
  }

  void removeAll()
  {
    _storage.removeAll();
  }

}