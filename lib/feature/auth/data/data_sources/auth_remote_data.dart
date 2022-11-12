import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<Either<NetworkExceptions, User>> loginUser({required User user});
}

class AuthRemoteDataSourceImp implements AuthRemoteDataSource {
  final RestClient _restClient;
  AuthRemoteDataSourceImp(this._restClient);
  @override
  Future<Either<NetworkExceptions, User>> loginUser(
      {required User user}) async {
    try {
      final result = await _restClient.sendRequest(
        '/login',
        HttpRequestType.POST,
        params: user.toJson(),
      );
      if (result.statusCode == 200) {
        return Right(User.fromJson(jsonDecode(result.body)));
      }
      return Left(NetworkExceptions.handleResponse(result.statusCode));
    } on HttpException catch (e) {
      realDebugPrint('LoginRemoteDataSourceImplError $e');
      return Left(NetworkExceptions.getException(e));
    }
  }
}
