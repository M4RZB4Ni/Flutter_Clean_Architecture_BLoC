import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_bloc/feature/landing/data/models/user_model.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key, required this.user}) : super(key: key);
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                user.image,
              ),
            ),
            accountName: Text(user.firstName),
            accountEmail: Text(user.email),
          )
        ],
      ),
    );
  }
}
