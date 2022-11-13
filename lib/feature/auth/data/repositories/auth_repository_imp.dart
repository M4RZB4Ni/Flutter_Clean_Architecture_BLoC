import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/data_sources/auth_remote_data.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;


  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<NetworkExceptions, User>> login({required User user}) {
    return _remoteDataSource.loginUser(
      user: user,
    );
  }
  //
}
