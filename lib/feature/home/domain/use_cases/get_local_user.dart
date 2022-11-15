import 'package:flutter_clean_architecture_bloc/app/global_data/auth_storage_service.dart';
import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/landing/data/models/user_model.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/data/data_sources/homepage_user_local_data_source.dart';


class GetLocalUserUseCase {
  HomepageLocalUserDataSource _homepageLocalUserDataSource;

  GetLocalUserUseCase(this._homepageLocalUserDataSource);

  Future<Either<NetworkExceptions, UserModel>> getUserFromLocalStorage() async {
    final response =
        await _homepageLocalUserDataSource.getUserFromLocalStorage();
    if (response.isRight()) {
      final responseUser = response.getOrElse(() => const UserModel());
      //persist user authorization in request
      AuthStorageService.to.saveToken(responseUser.token);
    }

    return response;
  }
}
