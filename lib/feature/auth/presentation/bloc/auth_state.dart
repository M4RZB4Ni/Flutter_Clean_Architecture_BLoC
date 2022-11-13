import 'package:flutter_clean_architecture_bloc/app/network/network_boiler.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';


@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AutenticationInitialState;
  const factory AuthState.loading() = AutenticationLoadingState;
  const factory AuthState.error(NetworkExceptions exception) = AutenticationErrorState;
  const factory AuthState.loaded({required UserModel user}) = AutenticationLoadedState;
}