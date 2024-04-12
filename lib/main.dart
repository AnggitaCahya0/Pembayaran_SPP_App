import 'package:flutter/material.dart';
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/news_screen.dart';
import 'package:my_app/screens/profilee_screen.dart';
import 'package:my_app/screens/rincian%20_pembayaran.dart';
import 'package:my_app/screens/catatan_pembayaran.dart';
import 'package:my_app/screens/routes/add_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const RincianPembayaran(),
    const CatatanPembayaran(),
  ];

  final List<String> _appBarTitles = const [
    'Beranda',
    'Pembayaran',
    'Catatan',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 8, 102, 255),
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      //membuat drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 8, 102, 255)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      height: 70.0,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/user.png'))),
                    ),
                    const Text(
                      'Anggita Cahya',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewsScreen()),
                );
              },
              leading: Icon(Icons.person_2),
              title: const Text('NEWS | Anggita Cahya_4C'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddData()),
                );
              },
              leading: Icon(Icons.payment),
              title: const Text('CRUD | Pembayaran'),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileeScreen()),
                );
              },
              leading: const Icon(Icons.person_2),
              title: const Text('Profile'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            const ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
            ),
            const ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.red,
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ),
            )
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pembayaran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Catatan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
