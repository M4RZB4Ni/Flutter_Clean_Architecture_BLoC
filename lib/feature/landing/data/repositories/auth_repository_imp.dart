import 'package:flutter_clean_architecture_bloc/app/global_data/auth_storage_service.dart';
import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/landing/data/data_sources/auth_remote_data.dart';
import 'package:flutter_clean_architecture_bloc/feature/landing/data/models/user_model.dart';
import 'package:flutter_clean_architecture_bloc/feature/landing/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;


  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<NetworkExceptions, UserModel>> login({required UserModel user}) {
    return _remoteDataSource.loginUser(
      user: user,
    );
  }

  @override
  bool checkIfUserLoggedIn() {
    final user=AuthStorageService.to.getUserModel();
    return user !=null;
  }
  //
}
