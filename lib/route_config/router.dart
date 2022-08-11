import 'package:flutter/material.dart';
import 'package:flutter_base/route_config/route_name_config.dart';
import 'package:flutter_base/ui/pages/home/home_page.dart';
import 'package:flutter_base/ui/pages/setting/setting_page.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteNameConfgi.homePage:
      return MaterialPageRoute(builder: (_) =>  const HomePage(),settings: settings);
    case RouteNameConfgi.settingPage:
      return MaterialPageRoute(builder: (_) =>  const SettingPage(),settings: settings);
    default:
      return MaterialPageRoute(
          builder: (_) => Container(
            alignment: Alignment.center,
            child:  Text("Undefined page route ${settings.name}"),
          ));
  }
}