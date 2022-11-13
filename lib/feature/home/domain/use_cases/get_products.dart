import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/data/models/product/product_model.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/domain/repositories/homepage_repository.dart';


class GetProductsFromServer {

  HomepageRepository _homepageRepository;

  GetProductsFromServer(this._homepageRepository);

  Future<Either<NetworkExceptions, ProductResponse>> getProductsFromServer() {
    return _homepageRepository.getProductsFromServer();
  }
}
