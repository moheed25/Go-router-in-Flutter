import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:router_go_flutter/Learning-1/screen_a.dart';

import 'package:router_go_flutter/Learning-1/screenb.dart';
import 'package:router_go_flutter/main.dart';
import 'error_widget.dart' as e;

class AppRoute {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state){
        return MyHomePage();
      }
    ),
    GoRoute(
        path: "/b",
        builder: (BuildContext context, GoRouterState state){
          return ScreenB();
        }
    ),
    GoRoute(
        path: "/a",
        builder: (BuildContext context, GoRouterState state){
          return ScreenA();
        }
    )
  ],
    errorBuilder: (context, state){
    return e.ErrorWidget(error: state.error.toString());
    }
  );
}