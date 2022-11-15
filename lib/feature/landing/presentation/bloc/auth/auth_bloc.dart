import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture_bloc/feature/landing/domain/use_cases/auth_usecase.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase _authUseCase;

  static const routeName = '/authentication-screen';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  AuthBloc(this._authUseCase) : super(const AutenticationInitialState()) {
    on<LoginUserEvent>((event, emit) async {
      final user = event.user;
      emit(const AuthState.loading());
      var result = await _authUseCase.login(user: user);
      result.fold((failure) => emit(AuthState.error(failure)),
          (data) => emit(AuthState.loaded(user: data)));
    });
  }
}
