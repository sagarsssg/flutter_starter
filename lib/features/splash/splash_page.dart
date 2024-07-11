import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_starter/app.dart';
import 'package:flutter_starter/navigation/app_router.dart';

import 'core/splash_bloc.dart';

@RoutePage()
class SplashPage extends StatelessWidget implements AutoRouteWrapper {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        switch (state) {
          case SplashSuccess():
            {
              getIt<AppRouter>().replace(const DashboardRoute());
            }
          case SplashError():
          // TODO: Handle this case.
          default:
            return;
        }
      },
      child: const Scaffold(
        body: Center(
          child: Text("Loading..."),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc()..add(SplashLoad()),
      child: this,
    );
  }
}
