import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture_bloc/app/base_view.dart';
import 'package:flutter_clean_architecture_bloc/app/messages/app_messages.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/presentation/bloc/auth_event.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/presentation/widgets/app_textfield.dart';



class AuthPage extends BaseView{
  AuthPage({super.key});
  @override
  Widget body(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        APPAuthField(
          hintText: APPMessages.userHint,
          controller: BlocProvider.of<AuthBloc>(context).emailController,
          key: const Key('username-field'),
        ),
        APPAuthField(
          hintText: APPMessages.password,
          controller: BlocProvider.of<AuthBloc>(context).passwordController,
          obscureText: true,
          key: const Key('password-field'),
        ),
        const SizedBox(height: 16.0),
        BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AutenticationErrorState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.exception.toString(),
                  ),
                ),
              );
            } else if (state is AutenticationLoadedState) {
              // AutoRouter.of(context).pushNamed('/home-page');
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    APPMessages.loginOkMsg,
                  ),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AutenticationLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return SizedBox(
              height: 54.0,
              width: 180.0,
              child: ElevatedButton(
                key: const Key('login-button'),
                style: const ButtonStyle(),
                onPressed: () {
                  context.read<AuthBloc>().add(
                    AuthEvent.onLoginTapped(
                      user: User(
                        username: BlocProvider.of<AuthBloc>(context).emailController.text,
                        password: BlocProvider.of<AuthBloc>(context).passwordController.text,
                      ),
                    ),
                  );
                },
                child: const Text(
                  APPMessages.login,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'Authentication Screen',
      ),
    );
  }






}