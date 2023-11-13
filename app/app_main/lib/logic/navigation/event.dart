part of 'bloc.dart';

abstract class NavigationEvent {
  const NavigationEvent();
}

final class SecondScreenNavigate extends NavigationEvent {
  final ScreenType screenType;

  SecondScreenNavigate(this.screenType);
}

final class ResultScreenNavigate extends NavigationEvent {
  final int year;

  ResultScreenNavigate(this.year);
}
