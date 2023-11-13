part of 'bloc.dart';

sealed class NavigationState extends Equatable {
  const NavigationState();
  Future<bool> onPop(BuildContext context);
  Widget getPage();
  @override
  List<Object> get props => [];
}

final class NavigationFirstScreen extends NavigationState {
  @override
  Widget getPage() {
    return const FirstScreen();
  }

  @override
  Future<bool> onPop(BuildContext context) async {
    return true;
  }
}

final class NavigationSecondScreen extends NavigationState {
  @override
  Widget getPage() {
    return const SecondScreen();
  }

  @override
  Future<bool> onPop(BuildContext context) async {
    NavigationBloc.navigateToFirstScreen(context: context);
    return false;
  }
}

final class NavigationResultScreen extends NavigationState {
  final Data data;

  const NavigationResultScreen({required this.data});

  @override
  Widget getPage() {
    return ResultScreen(
      status: data.screenType,
      year: data.year.toString(),
    );
  }

  @override
  Future<bool> onPop(BuildContext context) async {
    NavigationBloc.navigateToSecondScreen(
        context: context, screenType: data.screenType);
    return false;
  }
}
