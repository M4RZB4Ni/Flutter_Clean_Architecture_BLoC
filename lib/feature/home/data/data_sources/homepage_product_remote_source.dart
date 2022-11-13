import 'dart:convert';
import 'package:flutter_clean_architecture_bloc/app/messages/app_messages.dart';
import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/data/models/product/product_model.dart';


abstract class ProductsRemoteDataSource {
  Future<Either<NetworkExceptions, ProductResponse>> getProductFromServer();
}

class ProductsRemoteDataSourceImp extends ProductsRemoteDataSource {

  final RestClient _restClient;

  ProductsRemoteDataSourceImp(this._restClient);


  @override
  Future<Either<NetworkExceptions, ProductResponse>> getProductFromServer() async {
    try {
      final result = await _restClient.sendRequest(
        '/products',
        HttpRequestType.GET,
      );
      if (result.statusCode == 200) {
        final productListMap = jsonDecode(result.body);
        return Right(ProductResponse.fromJson(productListMap));
      }
      return Left(
        NetworkExceptions.handleResponse(result.statusCode),
      );
    } catch (e) {
      return const Left(
        NetworkExceptions.defaultError(APPMessages.parseError),
      );
    }
  }
  //
}
