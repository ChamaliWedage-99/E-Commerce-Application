import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade400),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'E-Commerce Shop'),
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
  //step 2- initialize current index
  int currentIndex = 0;

  //step 4 - Add the list of screens

  List screens = [
    const HomeScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Commerce Shop"),
        backgroundColor: Colors.red.shade400,
        centerTitle: true,
      ),
      //step 5 - add the screens to body

      body: screens[currentIndex],
      //step 01- create bottom nav bar and current index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        //step 6- add the ontap method
        onTap: (value) {
          setState(() => currentIndex = value);
        },

        //step 7 - add colors
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          //step 3 - add the bottom navigation items
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Favourites",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
