import 'package:dio/dio.dart';
import 'package:flutter_base/database/share_preferences_helper.dart';
import 'package:flutter_base/repositories/auth_repository.dart';
import 'package:flutter_base/ui/commons/app_dialog.dart';
import 'package:flutter_base/ui/pages/main/main_page.dart';
import 'package:flutter_base/ui/pages/sign_in/sign_in_page.dart';
import 'package:flutter_base/utils/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../repositories/user_repository.dart';
import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final AuthRepository authRepo;
  final UserRepository userRepo;

  SplashCubit({
    required this.authRepo,
    required this.userRepo,
  }) : super(const SplashState());

  void checkLogin() async {
    await Future.delayed(const Duration(seconds: 2));
    final token = await authRepo.getToken();
    if (token == null) {
      Get.offAll(() => const SignInPage());
    } else {
      try {
        await _determinePosition();
        //Profile
        await userRepo.getProfile();
        //Todo
        // authService.updateUser(myProfile);
      } catch (error, s) {
        logger.log(error, stackTrace: s);
        //Check 401
        if (error is DioError) {
          if (error.response?.statusCode == 401) {
            //Todo
            // authService.signOut();
            checkLogin();
            return;
          }
        }
        AppDialog.defaultDialog(
          message: "An error happened. Please check your connection!",
          textConfirm: "Retry",
          onConfirm: () {
            checkLogin();
          },
        );
        return;
      }
      // Get.offAll(() => const MainPage());
    }
  }
}

Future<void> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }
  final locationData = await Geolocator.getCurrentPosition();
  print(locationData);
  SharedPreferencesHelper.saveCurrentLocation(locationData);
}
