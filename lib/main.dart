import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Api google maps',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sismos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped2(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10.0), // Altura de los botones
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextButton(
                onPressed: () => _onItemTapped(0),
                child: Text('Mapa'),
              ),
              TextButton(
                onPressed: () => _onItemTapped(1),
                child: Text('Lista'),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Image.asset('assets/images/mapa.png',fit: BoxFit.contain,),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white, // Color de fondo del contenedor
        child: Container(
          height: 10.0, // Altura del contenedor
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.radar),
                onPressed: () => _onItemTapped2(0),
              ),
              IconButton(
                icon: Icon(Icons.person_2_rounded),
                onPressed: () => _onItemTapped2(1),
              ),
              IconButton(
                icon: Icon(Icons.portrait_rounded),
                onPressed: () => _onItemTapped2(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
