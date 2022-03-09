import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'buttons_event.dart';
part 'buttons_state.dart';

class ButtonsBloc extends Bloc<ButtonsEvent, ButtonsState> {
  ButtonsBloc() : super(ButtonsInitial()) {
    on<ButtonsEvent>((event, emit) { });
  }
}
