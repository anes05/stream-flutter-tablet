
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'appRouter.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: WelcomeRoute.page,initial: true),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SuccessLogin.page)


  ];

}