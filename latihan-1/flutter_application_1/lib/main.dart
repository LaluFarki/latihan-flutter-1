import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  int _counter = 1; // Ini variabel penampung angka
  String _text = "ganjil"; // Ini variabel penampung teks
  String _text2 = "ganjil"; // Ini variabel penampung teks

  void _incrementCounter() {
    setState(() {
      // Fungsi ini memberi tahu Flutter untuk menggambar ulang layar
      _counter++;
      if (_counter > 10) {
        _counter = 1;
      }

      if (_counter % 2 == 0) {
        _text = "genap";
      } else {
        _text = "ganjil";
      }

      _text2 = "ganjil";
      for (int i = 0; i < _counter; i++) {
        if (i % 2 != 0) {
          _text2 += " $i ,";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter', // Menampilkan isi variabel _counter
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text, // Menampilkan isi variabel _text
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text2, // Menampilkan isi variabel _text2
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // Memanggil fungsi tambah saat diklik
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
