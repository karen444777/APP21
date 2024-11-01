import 'package:flutter/material.dart';
import 'package:tarea1/pages/bussines.dart';
import 'package:tarea1/pages/education.dart';
import 'package:tarea1/pages/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();  
}

class _MyAppState extends State<MyApp> {
 int _PaginaActual = 0;
 List<Widget> _Paginas = [Home(), Education(), Bussines(),Education()];

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: _Paginas[_PaginaActual],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _PaginaActual,
          onTap:(int index){
            setState(() {
              _PaginaActual= index;
            });

          },

          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red),

             BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Setttings',
            backgroundColor: Colors.green,),

            BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.orange,),

            BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
            backgroundColor: Colors.blue,),

        ]),
      ),
    );
  }
}
