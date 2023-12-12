abstract class MainState {}

class MainInitialState extends MainState {}

class IconPressedState extends MainState {

  final int iconPressedNumber;

  IconPressedState(this.iconPressedNumber);
}

class IconIsntPressedState extends MainState {}