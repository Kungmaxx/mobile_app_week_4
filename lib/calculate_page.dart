import 'package:flutter/material.dart';

class MyCalculatePage extends StatefulWidget {
  const MyCalculatePage({super.key});

  @override
  State<MyCalculatePage> createState() => _MyCalculatePageState();
}

class _MyCalculatePageState extends State<MyCalculatePage> {
  int _output1 = 0;
  double _chargerate = 0;
  int _targetsoc = 0;
  int _voltage = 0;
  double _batterycapacity = 0;
  double _efficiency = 0;
  double _chargingtime = 0;
  double _chargingpower = 0;

  final _textController = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();
  final _textController4 = TextEditingController();
  final _textController5 = TextEditingController();
  final _textController6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Image(
                image: AssetImage('assets/car.png'),
                height: 160,
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                color: const Color.fromARGB(255, 9, 255, 0),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.battery_charging_full,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text(
                        '$_output1%',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 250, 250),
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 600,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.charging_station_outlined,
                              color: Color.fromARGB(174, 0, 0, 0),
                            ),
                            const Text('Charge rate'),
                            Text('$_chargerate'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                          child: VerticalDivider(
                            thickness: 2,
                            width: 10,
                            color: Color.fromARGB(255, 114, 114, 114),
                          ),
                        ),
                        Column(
                          children: [
                            const Icon(
                              Icons.adjust,
                              color: Color.fromARGB(174, 0, 0, 0),
                            ),
                            const Text('Target SOC%'),
                            Text('$_targetsoc'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const Icon(
                              Icons.timer,
                              color: Color.fromARGB(174, 0, 0, 0),
                            ),
                            const Text('Charging Time'),
                            Text('${_chargingtime.toStringAsFixed(2)} hours'),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                          child: VerticalDivider(
                            thickness: 2,
                            width: 10,
                            color: Color.fromARGB(255, 114, 114, 114),
                          ),
                        ),
                        Column(
                          children: [
                            const Icon(
                              Icons.power,
                              color: Color.fromARGB(174, 0, 0, 0),
                            ),
                            const Text('Charging Power'),
                            Text('$_chargingpower'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Current SOC',
                    icon: Icon(Icons.battery_charging_full),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: _textController2,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Target SOC',
                    icon: Icon(Icons.adjust),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: _textController3,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Charging Rate',
                    icon: Icon(Icons.charging_station_outlined),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: _textController4,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Voltage',
                    icon: Icon(Icons.power_settings_new),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: _textController5,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Battery Capacity',
                    icon: Icon(Icons.battery_saver),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  controller: _textController6,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Efficiency',
                    icon: Icon(Icons.bolt),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      String input = _textController.text; // Current SOC
                      String input2 = _textController2.text; // Target SOC
                      String input3 =
                          _textController3.text; // Charging Rate (A)
                      String input4 = _textController4.text; // Voltage (V)
                      String input5 =
                          _textController5.text; // Battery Capacity (kWh)
                      String input6 = _textController6.text; // Efficiency (%)

                      int? parsedInput = int.tryParse(input);
                      int? parsedInput2 = int.tryParse(input2);
                      double? parsedInput3 = double.tryParse(input3);
                      int? parsedInput4 = int.tryParse(input4);
                      double? parsedInput5 = double.tryParse(input5);
                      double? parsedInput6 = double.tryParse(input6);

                      if (parsedInput != null &&
                          parsedInput2 != null &&
                          parsedInput3 != null &&
                          parsedInput4 != null &&
                          parsedInput5 != null &&
                          parsedInput6 != null) {
                        setState(() {
                          _output1 = parsedInput;
                          _targetsoc = parsedInput2;
                          _chargerate = parsedInput3;
                          _voltage = parsedInput4;
                          _batterycapacity = parsedInput5;
                          _efficiency = parsedInput6;

                          _chargingpower = (_voltage * _chargerate) / 1000;

                          double chargingSOC =
                              (_targetsoc - _output1) as double;

                          _chargingtime = (chargingSOC * _batterycapacity) /
                              100 /
                              (_chargingpower * _efficiency);
                        });
                        debugPrint(
                            'Calculation complete: $_chargingtime hours');
                      } else {
                        debugPrint('Invalid input, please enter valid numbers');
                      }
                    },
                    child: const Text(
                      'OK button',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _output1 = 0;
            _chargingpower = 0;
            _chargingtime = 0;
            _textController.clear();
            _textController2.clear();
            _textController3.clear();
            _textController4.clear();
            _textController5.clear();
            _textController6.clear();
          });
          debugPrint('Reset pressed');
        },
        child: const Icon(Icons.refresh), //Icons that program has for us
      ), //Button on the lower right of screen
    );
  }
}
