import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/data_sources/auth_storage_service.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/domain/repositories/auth_repository.dart';

class AuthUseCase{

  AuthUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<Either<NetworkExceptions, User>> login({required User user}) async {
    var response= await _authRepository.login(user: user);
    if(response.isRight())
      {
        final remoteUser = response.getOrElse(() => const User());
        await AuthStorageService.to.saveToken(remoteUser.token);
        await AuthStorageService.to.saveToken(remoteUser.token);
      }
    return response;
  }

}