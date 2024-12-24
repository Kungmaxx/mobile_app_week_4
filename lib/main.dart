import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //build is render similar to react
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 255, 81, 81)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Charging APP',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            onPressed: () {
              debugPrint('leading icon pressed');
            },
          ), //Add AppBar on the upper left on screen
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                debugPrint('leading actions icon pressed');
              },
            ),
            IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {
                debugPrint('leading info icon pressed');
              },
            ),
          ],
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Image(
                image: AssetImage('assets/car.png'),
                height: 160,
              ),
              const Card(
                color: Color.fromARGB(255, 9, 255, 0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.battery_charging_full,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text(
                        '100%',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 250, 250),
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 177, 173, 173),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.battery_saver,
                              color: Color.fromARGB(174, 0, 0, 0),
                            ),
                            Text('Battery Capacity(kWh)'),
                            Text('38.5'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                          child: VerticalDivider(
                            thickness: 2,
                            width: 10,
                            color: Color.fromARGB(255, 114, 114, 114),
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.bolt,
                              color: Color.fromARGB(174, 0, 0, 0),
                            ),
                            Text('Efficiency %'),
                            Text('0.84'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 177, 173, 173),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.timer,
                              color: Color.fromARGB(174, 0, 0, 0),
                            ),
                            Text('Charging Time(hr)'),
                            Text('7'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.power_settings_new,
                              color: Color.fromARGB(174, 0, 0, 0),
                            ),
                            Text('Voltage(V)'),
                            Text('225'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                          child: VerticalDivider(
                            thickness: 2,
                            width: 10,
                            color: Color.fromARGB(255, 114, 114, 114),
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.power,
                              color: Color.fromARGB(174, 0, 0, 0),
                            ),
                            Text('Charging Power(kWh)'),
                            Text('4.1400'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.battery_saver,
                              color: Color.fromARGB(174, 0, 0, 0),
                            ),
                            Text('Battery Capacity(kWh)'),
                            Text('38.5'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                          child: VerticalDivider(
                            thickness: 2,
                            width: 10,
                            color: Color.fromARGB(255, 114, 114, 114),
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.bolt,
                              color: Color.fromARGB(174, 0, 0, 0),
                            ),
                            Text('Efficiency %'),
                            Text('0.84'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Card(
                color: Color.fromARGB(255, 255, 80, 80),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  child: Column(
                    //use Column after child to add more child
                    children: [
                      Icon(
                        Icons.battery_charging_full,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text(
                        'Stop Charging',
                        style: TextStyle(
                            color: Color.fromARGB(255, 250, 250, 250),
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.refresh), //Icons that program has for us
        ), //Button on the lower right of screen
      ),
    );
  }
}

/*
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 255, 119, 164))),
      home: Scaffold(
        appBar: AppBar(
          title: Text('CS app'),
        ),
        body: Text("Hello, World!"),
      ),
    ),
  );
}
*/

/*
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter--;
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
            const Text(
              'Pornpipat Counter:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
*/