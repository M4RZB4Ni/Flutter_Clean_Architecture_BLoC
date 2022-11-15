import 'package:flutter_clean_architecture_bloc/app/bindings/home_binding.dart';
import 'package:flutter_clean_architecture_bloc/app/bindings/landing_binding.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    HomeBinding().dependencies();
    LandingBinding().dependencies();
  }


}