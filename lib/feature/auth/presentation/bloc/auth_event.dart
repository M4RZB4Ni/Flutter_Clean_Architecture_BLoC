import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.onLoginTapped({required UserModel user}) =LoginUserEvent;
}