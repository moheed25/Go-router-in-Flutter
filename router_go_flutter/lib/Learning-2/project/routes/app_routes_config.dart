import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:router_go_flutter/Learning-2/pages/about.dart';
import 'package:router_go_flutter/Learning-2/pages/contact_us.dart';
import 'package:router_go_flutter/Learning-2/pages/error_page.dart';
import 'package:router_go_flutter/Learning-2/pages/home.dart';
import 'package:router_go_flutter/Learning-2/pages/profile.dart';
import 'package:router_go_flutter/Learning-2/project/routes/app_routes_constant.dart';

class NyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: MyAppRouteConstants.homeRouteName,
          path: '/',
          pageBuilder: (context, state) {
            return MaterialPage(child: Home());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.profileRouteName,
          path: '/profile/:username/:userid',
          pageBuilder: (context, state) {
            return MaterialPage(
                child: Profile(
              userid: state.pathParameters['userid']!,
              username: state.pathParameters['username']!,
            ));
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.aboutRouteName,
          path: '/about',
          pageBuilder: (context, state) {
            return MaterialPage(child: About());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.contactUsRouteName,
          path: '/contact_us',
          pageBuilder: (context, state) {
            return MaterialPage(child: ContactUS());
          },
        )
      ],
      errorPageBuilder: (context, state) {
        return MaterialPage(child: ErrorPage());
      },
      redirect: (context, state) {
        if (!isAuth &&
            state.uri.toString()
                .startsWith('/${MyAppRouteConstants.profileRouteName}')) {
          return context.namedLocation(MyAppRouteConstants.contactUsRouteName);
        } else {
          return null;
        }
      },
    );
    return router;
  }
}