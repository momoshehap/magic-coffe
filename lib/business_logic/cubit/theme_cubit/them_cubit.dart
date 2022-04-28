import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../presentation/theme/theme.dart';

part 'them_state.dart';

class ThemCubit extends Cubit<ThemeState> {
  ThemCubit()
      : super(ThemeState(
          themeData: AppThemes.appThemeData[AppTheme.lightTheme],
        ));

  void toggleTheme(bool value) {
    emit(value == true
        ? ThemeState(
            themeData: AppThemes.appThemeData[AppTheme.darkTheme],
          )
        : ThemeState(
            themeData: AppThemes.appThemeData[AppTheme.lightTheme],
          ));
  }
}
