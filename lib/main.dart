import 'package:flutter/material.dart';
import 'package:infocar/pages/car.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<Widget> pages = const [
    //substituir pelas paginas do app (o widget correspondente)
    PageCar(),
    Text(
      "colocar pagina de favoritos",
      style: TextStyle(fontSize: 48),
    ),
    Text(
      "colocar pagina de perfil",
      style: TextStyle(fontSize: 48),
    ),
  ];

  void _changeIndex(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(234, 234, 234, 1),
        leading: const Icon(Icons.menu),
        title: Text(widget.title),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.search_outlined),
          ),
        ],
      ),
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car_outlined),
            label: 'carros',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car_outlined),
            label: 'favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _changeIndex,
        selectedItemColor: Colors.black,
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
