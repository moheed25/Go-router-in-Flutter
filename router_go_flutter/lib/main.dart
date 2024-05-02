import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_go_flutter/Learning-1/routing.dart';
import 'package:router_go_flutter/Learning-2/project/routes/app_routes_config.dart';

// For Learning 2 :


// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return
//    MaterialApp.router(
//     // routerConfig: NyAppRouter.returnRouter(true),
//       debugShowCheckedModeBanner: false,
//   routeInformationProvider : NyAppRouter.returnRouter(true).routeInformationProvider,
//       routeInformationParser:
//           NyAppRouter.returnRouter(true).routeInformationParser,
//       routerDelegate: NyAppRouter.returnRouter(true).routerDelegate,
//     );
//   }
// }




// For Learning 1 : 

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: AppRoute.router.routerDelegate,
      routeInformationProvider: AppRoute.router.routeInformationProvider,
      routeInformationParser: AppRoute.router.routeInformationParser,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text("GO ROUTER"),),
     body: Center(
       child: ElevatedButton(
         child: const Text("Navigate"),
         onPressed: (){
           context.go("/b");
         },
       ),
     ),
   );
  }
}

