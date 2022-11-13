import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/data/models/product/product_model.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';


abstract class HomepageRepository {
  Future<Either<NetworkExceptions, UserModel>> getUserFromLocalStorage();
  Future<Either<NetworkExceptions, ProductResponse>> getProductsFromServer();
}
