import 'dart:convert';
import 'dart:io';

import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<Either<NetworkExceptions, UserModel>> loginUser({required UserModel user});
}

class AuthRemoteDataSourceImp implements AuthRemoteDataSource {
  final RestClient _restClient;
  AuthRemoteDataSourceImp(this._restClient);
  @override
  Future<Either<NetworkExceptions, UserModel>> loginUser(
      {required UserModel user}) async {
    try {
      final result = await _restClient.sendRequest(
        '/login',
        HttpRequestType.POST,
        params: user.toJson(),
      );
      if (result.statusCode == 200) {
        return Right(UserModel.fromJson(jsonDecode(result.body)));
      }
      return Left(NetworkExceptions.handleResponse(result.statusCode));
    } on HttpException catch (e) {
      realDebugPrint('LoginRemoteDataSourceImplError $e');
      return Left(NetworkExceptions.getException(e));
    }
  }
}
