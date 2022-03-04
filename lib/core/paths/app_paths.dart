import 'package:flutter/material.dart';
import 'package:shop_app/gui/views/home_view/home_view.dart';

Map<String, WidgetBuilder> routesApp() => <String, WidgetBuilder> {

  'home': ( _ ) => const HomeView(),

};