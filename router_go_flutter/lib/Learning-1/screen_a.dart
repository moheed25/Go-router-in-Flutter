import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.replace('/b');
             // GoRouter.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Screen A"),
      ),
      body: Column(
        children: [
          Center(
            child: Text("Hello From Salman"),
          ),
          Center(
       child: ElevatedButton(
         child: const Text("Navigate"),
         onPressed: (){
           context.go("/b");
         },
       ),
     ),
        ],
      ),
    );
  }
}
