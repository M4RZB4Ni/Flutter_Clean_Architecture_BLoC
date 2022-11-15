import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture_bloc/app/base/base_view.dart';
import 'package:flutter_clean_architecture_bloc/app/messages/app_messages.dart';
import 'package:flutter_clean_architecture_bloc/feature/landing/data/models/user_model.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/presentation/bloc/home_event.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/presentation/bloc/home_state.dart';
import 'package:flutter_clean_architecture_bloc/feature/home/presentation/widgets/drawer.dart';

class HomePage extends BaseView {
  static const routeName = '/home-page';

  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(
          const HomeFetchDataEvent(),
        );
    return super.build(context);
  }
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: const Text(APPMessages.homepage),
    );
  }
  @override
  Widget? drawer() {

    return BlocConsumer<HomeBloc, HomeState>(builder: (context, state) {
      return state is HomepageLoadedState ?  HomeDrawer(user: state.user) : const HomeDrawer(user: UserModel());
    }, listener: (context, state) {

    },);
  }
  @override
  Widget body(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(listener: (context, state) {
      // if (state is HomepageUserLoadedState) {
      //   context.read<HomepageBloc>().add(
      //         const HomepageGetProductEvent(),
      //       );
      // }
    }, builder: (context, state) {
      return state is HomeLoadingState
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : state is HomepageLoadedState
          ? ListView.separated(
        separatorBuilder: (_, __) => const Divider(),
        itemCount: state.productList.products!.length,
        itemBuilder: (context, index) {
          final item = state.productList.products![index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(item.thumbnail),
            ),
            title: Text(item.title),
            subtitle: Text(
              item.description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          );
        },
      )
          : Container();
    });
  }
}
