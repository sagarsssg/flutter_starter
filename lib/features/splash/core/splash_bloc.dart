import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/data/remote/repo.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashLoad>((event, emit) async {
      emit(SplashLoading());
      Repo.getBaseData();
      Repo.getS3Data();

      await Future.delayed(const Duration(seconds: 3));
      emit(SplashSuccess());
    });
  }
}
