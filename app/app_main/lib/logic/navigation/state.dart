part of 'bloc.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();
  @override
  List<Object> get props => [];
}

class NavigationInitial extends NavigationState {}

final class NavigationSecondScreen extends NavigationState {}

final class NavigationRecultScreen extends NavigationState {
  final Data data;

  const NavigationRecultScreen({required this.data});
}
