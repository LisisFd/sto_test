import 'package:app_main/domain/domain.dart';
import 'package:app_main/logic/controllers_set_up.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view/view.dart';

export 'bloc.dart';

part 'event.dart';
part 'state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  late Data _data;
  late int _year;
  late ScreenType _screenType;

  static Widget build({
    required Widget Function(BuildContext context, NavigationState state)
        builder,
  }) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: builder,
    );
  }

  NavigationBloc() : super(NavigationFirstScreen()) {
    on<FirstScreenNavigate>(
      (event, emit) => emit(
        NavigationFirstScreen(),
      ),
    );
    on<SecondScreenNavigate>((event, emit) {
      _screenType = event.screenType;
      emit(NavigationSecondScreen());
    });
    on<ResultScreenNavigate>((event, emit) {
      _year = event.year;
      _data = Data(screenType: _screenType, year: _year);
      emit(NavigationResultScreen(data: _data));
    });
  }

  static void navigateToSecondScreen(
      {required BuildContext context, required ScreenType screenType}) {
    BlocProvider.of<NavigationBloc>(context).add(
      SecondScreenNavigate(screenType),
    );
  }

  static void navigateToResultScreen(
      {required BuildContext context, required int year}) {
    BlocProvider.of<NavigationBloc>(context).add(
      ResultScreenNavigate(year),
    );
  }

  static void navigateToFirstScreen({
    required BuildContext context,
  }) {
    BlocProvider.of<NavigationBloc>(context).add(
      const FirstScreenNavigate(),
    );
  }
}

extension NavigationBlocExtension on ControllersSetUp {
  addNavigationProvider() {
    addProvider<NavigationBloc>((context) => NavigationBloc());
  }
}
