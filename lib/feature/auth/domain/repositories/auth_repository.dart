import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';


abstract class AuthRepository {
  Future<Either<NetworkExceptions, User>> login({required User user});
}
