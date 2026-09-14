import 'package:flutter/material.dart';
import 'package:flutter_internals/keys/keys.dart';

import 'package:flutter_internals/ui_updates_demo.dart';

void main() {
  final numbers = [1, 2, 3];
  /* numbers = [4, 5, 6];  
  numbers is final so you
   can't use "=" which means 
   you can't assign again, you can't create new list, 
  you can't create new object in memory because numbers is final*/

  /*
  var numbers = [4, 5, 6]; 
  use this to reassign/overwrite new list with that variable*/

  /* const numbers = [1,2,3];
  numbers.add(4); 
  if you try to add new value in existing list then 
  you will get error "Cannot add to an unmodifiable list"
  with const you are saying "its not just final, but also can't be manipulated behind the scenes"
  */
  numbers.add(4);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Internals'),
        ),
        body: const Keys(),
      ),
    );
  }
}
