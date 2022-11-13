import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/data/data_sources/homepage_product_remote_source.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/data/data_sources/homepage_user_local_data_source.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/data/models/product/product_model.dart';

import 'package:flutter_clean_architecture_bloc/feature/home/domain/repositories/homepage_repository.dart';


class HomepageRepositoryImpl extends HomepageRepository {

  final ProductsRemoteDataSource _productsRemoteDataSource;
  final HomepageLocalUserDataSource _homepageLocalUserDataSource;

  HomepageRepositoryImpl(this._productsRemoteDataSource, this._homepageLocalUserDataSource);

  @override
  Future<Either<NetworkExceptions, ProductResponse>> getProductsFromServer() {
    return _productsRemoteDataSource.getProductFromServer();
  }

  @override
  Future<Either<NetworkExceptions, UserModel>> getUserFromLocalStorage() {
    return _homepageLocalUserDataSource.getUserFromLocalStorage();
  }
}
