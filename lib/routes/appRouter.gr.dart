// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:agora/screens/homePage/homePage.dart' as _i1;
import 'package:agora/screens/livePage/livePage.dart' as _i2;
import 'package:agora/screens/loginPage/LoginPage.dart' as _i3;
import 'package:agora/screens/questionsPage/questionsPage.dart' as _i4;
import 'package:agora/screens/questionsPage/searchQuestionsPage.dart' as _i5;
import 'package:agora/screens/successLogin/successLogin.dart' as _i6;
import 'package:agora/screens/welcomePage/welcomePage.dart' as _i7;
import 'package:auto_route/auto_route.dart' as _i8;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    LiveRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LivePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    QuestionsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.QuestionsPage(),
      );
    },
    SearchQuestionsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SearchQuestionsPage(),
      );
    },
    SuccessLogin.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SuccessLogin(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.WelcomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LivePage]
class LiveRoute extends _i8.PageRouteInfo<void> {
  const LiveRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LiveRoute.name,
          initialChildren: children,
        );

  static const String name = 'LiveRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.QuestionsPage]
class QuestionsRoute extends _i8.PageRouteInfo<void> {
  const QuestionsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          QuestionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SearchQuestionsPage]
class SearchQuestionsRoute extends _i8.PageRouteInfo<void> {
  const SearchQuestionsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SearchQuestionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchQuestionsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SuccessLogin]
class SuccessLogin extends _i8.PageRouteInfo<void> {
  const SuccessLogin({List<_i8.PageRouteInfo>? children})
      : super(
          SuccessLogin.name,
          initialChildren: children,
        );

  static const String name = 'SuccessLogin';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.WelcomePage]
class WelcomeRoute extends _i8.PageRouteInfo<void> {
  const WelcomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
