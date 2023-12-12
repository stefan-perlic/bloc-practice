import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notification/pages/bloc/main_event.dart';
import 'package:notification/pages/bloc/main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  var iconPressedNumber = 0;

  MainBloc() : super(MainInitialState()) {
    on<IconPressedEvent>(_mapEventToState);
  }

  void _mapEventToState(IconPressedEvent event, Emitter<MainState> emitter) {
    print("icon pressed event happened");
    iconPressedNumber += 1;
    emitter(IconPressedState(iconPressedNumber));
    print("icon pressed event happened $iconPressedNumber");
  }
}
