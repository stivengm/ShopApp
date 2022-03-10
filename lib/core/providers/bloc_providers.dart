import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/blocs/buttons_bloc/buttons_bloc.dart';
import 'package:shop_app/core/blocs/login_bloc/login_bloc.dart';

final List<BlocProvider> storeBloc  = [
  BlocProvider<LoginBloc>(create: ( _ ) => LoginBloc()),
  BlocProvider<ButtonsBloc>(create: ( _ ) => ButtonsBloc()),
];