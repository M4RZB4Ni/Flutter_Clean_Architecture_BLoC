import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/landing/data/models/user_model.dart';


abstract class AuthRepository {
  Future<Either<NetworkExceptions, UserModel>> login({required UserModel user});
  bool checkIfUserLoggedIn();

}
