import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture_bloc/feature/auth/data/models/user_model.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/domain/use_cases/get_local_user.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/domain/use_cases/get_products.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/presentation/bloc/home_event.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/presentation/bloc/home_state.dart';


class HomepageBloc extends Bloc<HomeEvent, HomeState> {
  final GetLocalUserUseCase _getLocalUserUseCase;
  final GetProductsFromServer _getProductsFromServer;

  HomepageBloc(this._getProductsFromServer,this._getLocalUserUseCase) : super(const HomeInitialState()) {
    on<HomeFetchDataEvent>(
          (event, emit) async {
        emit(const HomeState.loading());
        var userResult = await _getLocalUserUseCase.getUserFromLocalStorage();

        var result = await _getProductsFromServer.getProductsFromServer();
        result.fold(
              (failure) {
            emit(HomeState.error(failure));
          },
              (data) {
            emit(
              HomeState.loadedState(
                productList: data,
                user: userResult.getOrElse(
                      () => const UserModel(),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
