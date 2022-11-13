

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    final List<ProductModel>? products,

  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String thumbnail,
    @Default(0.0) double rating,
    @Default(0.0) double discountPercentage,
    @Default(0) int stock,
    @Default(0) int price,
    @Default([]) List<String> images,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
