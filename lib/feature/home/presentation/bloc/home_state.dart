import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/data/models/product/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitialState;
  const factory HomeState.loading() = HomeLoadingState;
  const factory HomeState.error(String message) = HomeErrorState;
  const factory HomeState.loadedState({
    required ProductResponse productList,
    required UserModel user,
  }) = HomepageLoadedState;
}