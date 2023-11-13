import 'package:app_main/config/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';
import 'state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  static ITheme getCurrentTheme(BuildContext context) {
    return BlocProvider.of<ThemeBloc>(context).state.theme;
  }

  static Widget build({
    required Widget Function(BuildContext context, ThemeState state) builder,
  }) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: builder,
    );
  }

  static Widget create({required Widget child}) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: child,
    );
  }

  ThemeBloc() : super(ThemeInitial(DarkTheme())) {
    on<ThemeUpdateEvent>((event, emit) {
      ITheme theme = state.theme;
      if (theme is DarkTheme) {
        theme = LightTheme();
      } else {
        theme = DarkTheme();
      }
      emit(ThemeUpdateState(theme));
    });
  }
}
