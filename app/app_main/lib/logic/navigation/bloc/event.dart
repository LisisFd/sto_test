part of 'bloc.dart';

abstract class NavigationEvent {
  const NavigationEvent();
}

final class FirstScreenNavigate extends NavigationEvent {
  const FirstScreenNavigate();
}

final class SecondScreenNavigate extends NavigationEvent {
  final ScreenType screenType;

  const SecondScreenNavigate(this.screenType);
}

final class ResultScreenNavigate extends NavigationEvent {
  final int year;

  const ResultScreenNavigate(this.year);
}
