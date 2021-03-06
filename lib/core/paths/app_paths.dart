import 'package:flutter/material.dart';
import 'package:shop_app/gui/templates/zoom_drawer.dart';
import 'package:shop_app/gui/views/login_view/login_view.dart';
import 'package:shop_app/gui/views/register_view/register_view.dart';

Map<String, WidgetBuilder> routesApp() => <String, WidgetBuilder> {
  'home':         ( _ ) => const ZoomDrawerApp(),
  'login':        ( _ ) => const LoginView(),
  'register':     ( _ ) => const RegisterView(),
};