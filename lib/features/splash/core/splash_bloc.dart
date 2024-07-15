import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/localization/app_localization.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashLoad>((event, emit) async {
      emit(SplashLoading());
      AppLocalization.updateLocalizationValue(
          AppLocale.kEnglish, {"login": "Please login"});
      await Future.delayed(const Duration(seconds: 3));
      emit(SplashSuccess());
    });
  }
}
