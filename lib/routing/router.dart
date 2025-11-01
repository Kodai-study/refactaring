/// ルートを定義する
library;

import 'package:go_router/go_router.dart';
import 'package:refactaring/main.dart';
import 'package:refactaring/ui/home/view_models/home_viewmodel.dart';
import 'package:refactaring/ui/home/widgets/home_screen.dart';

import 'routes.dart';

/// Top go_router entry point.
///
/// Listens to changes in [AuthTokenRepository] to redirect the user
/// to /login when the user logs out.
GoRouter router() => GoRouter(
  initialLocation: Routes.home,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(path: Routes.home,builder: (context,state){
      return HomeScreen(viewModel: HomeViewModel());
    }),
  ],
);
