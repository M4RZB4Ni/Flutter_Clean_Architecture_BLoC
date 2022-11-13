import 'package:flutter_clean_architecture_bloc/app/messages/app_messages.dart';
import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/data_sources/auth_storage_service.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';


abstract class HomepageLocalUserDataSource {
  Future<Either<NetworkExceptions, UserModel>> getUserFromLocalStorage();
}

class HomepageLocalUserDataSourceImp extends HomepageLocalUserDataSource {
  @override
  Future<Either<NetworkExceptions, UserModel>> getUserFromLocalStorage() async {
    try {
      final user = AuthStorageService.to.getUserModel();
      if (user != null) {
        return Right(user);
      }
      return const Left(
        NetworkExceptions.defaultError(APPMessages.parseError),
      );
    } catch (e) {
      return const Left(
        NetworkExceptions.defaultError(APPMessages.parseFailHome)
      );
    }
  }
}