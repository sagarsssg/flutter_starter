import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashLoad>((event, emit) async {
      emit(SplashLoading());
      await Future.delayed(const Duration(seconds: 3));
      emit(SplashSuccess());
    });
  }
}
