import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  IconData suffix = Icons.visibility_off_outlined;
  bool showMoney = true;
  void changeMoneyVisibility() {
    showMoney = !showMoney;
    suffix =
        showMoney ? Icons.visibility_off_outlined : Icons.visibility_outlined;
    emit(SuccessChangPasswordVisibilityStates());
  }
}
