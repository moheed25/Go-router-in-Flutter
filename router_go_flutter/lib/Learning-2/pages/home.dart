import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

import 'package:router_go_flutter/Learning-2/project/routes/app_routes_constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Center(
              child: Text('Home'),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(Uri(path: '/about').toString());
              },
              child: Text('About Page')),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.profileRouteName, pathParameters: {
                  'username': 'Moheed Aziz',
                  'userid': 'uhfhfhfdghfk'
                });
              },
              child: Text('Profile Page')),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.contactUsRouteName);
              },
              child: Text('ContactUs Page')),
        ],
      ),
    );
  }
}