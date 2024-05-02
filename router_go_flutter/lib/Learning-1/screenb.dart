import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.replace('/');
             // GoRouter.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Screen B"),
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
           context.go("/a");
         },
       ),
     ),
        ],
      ),
    );
  }
}
