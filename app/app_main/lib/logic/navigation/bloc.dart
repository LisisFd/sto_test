import 'package:app_main/domain/domain.dart';
import 'package:app_main/logic/controllers_set_up.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event.dart';
part 'state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  late final Data data;
  late final int year;
  late final ScreenType screenType;

  NavigationBloc() : super(NavigationInitial()) {
    on<SecondScreenNavigate>((event, emit) {
      screenType = event.screenType;
    });
    on<ResultScreenNavigate>((event, emit) {
      year = event.year;
      data = Data(screenType: screenType, year: year);
    });
  }
}

extension NavigationBlocExtension on ControllersSetUp {
  addNavigationProvider() {
    addProvider((context) => NavigationBloc());
  }
}
