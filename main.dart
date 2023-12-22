import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_2/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Words Generator',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
          title: Text(
            'Word Generator',
            style: TextStyle(),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 50, 167, 240)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
              padding: EdgeInsets.all(10.0),
              color: Colors.amber,
              child: Text(
                appState.current.asUpperCase,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Icon(Icons.favorite);
                  },
                  icon: Icon(Icons.favorite_border),
                  label: Text('Like'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    appState.getNext();
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Profile'),
        backgroundColor: Color.fromARGB(255, 50, 167, 240),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage("avatar_1.png"),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Hardik Gupta',
            style: TextStyle(fontSize: 25.0),
          ),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.mail),
              label: Text('hardikgpt2021@gmail.com')),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.location_on),
              label: Text('Kanpur,India')),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.work),
              label: Text('Roll_no: 220419')),
        ],
      ),
    );
  }
}
