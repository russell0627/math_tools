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
  static const TextStyle textStyle = TextStyle(color: Colors.white);

  final TextEditingController controller = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  final TextEditingController controller4 = TextEditingController();
  final TextEditingController controller5 = TextEditingController();
  final TextEditingController controller6 = TextEditingController();

  double x1 = 0;
  double y1 = 0;
  double x2 = 0;
  double y2 = 0;
  double? rateOfChangeVariable;

  double y = 0;
  double x = 0;
  double? initialValueVariable = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.black87,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Rate Of Change"),
              Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "x1",
                    style: textStyle,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    color: Colors.black26,
                    height: 50,
                    width: 400,
                    child: TextFormField(
                      controller: controller,
                      style: textStyle,
                      keyboardType: TextInputType.number,
                      onChanged: (value) =>
                          value != "" ? x1 = double.parse(value) : null,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "y1",
                    style: textStyle,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    color: Colors.black26,
                    height: 50,
                    width: 400,
                    child: TextFormField(
                      controller: controller2,
                      style: textStyle,
                      keyboardType: TextInputType.number,
                      onChanged: (value) =>
                          value != "" ? y1 = double.parse(value) : null,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "x2",
                    style: textStyle,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    color: Colors.black26,
                    height: 50,
                    width: 400,
                    child: TextFormField(
                      controller: controller3,
                      style: textStyle,
                      keyboardType: TextInputType.number,
                      onChanged: (value) =>
                          value != "" ? x2 = double.parse(value) : null,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "y2",
                    style: textStyle,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    color: Colors.black26,
                    height: 50,
                    width: 400,
                    child: TextFormField(
                      controller: controller4,
                      style: textStyle,
                      keyboardType: TextInputType.number,
                      onChanged: (value) =>
                          value != "" ? y2 = double.parse(value) : null,
                    ),
                  )
                ],
              ),
              Container(
                color: Colors.black26,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          rateOfChangeVariable = rateOfChange(x1, y1, x2, y2);
                          setState(() {});
                        },
                        child: const Text(
                          "Calculate",
                          style: textStyle,
                        )),
                    Text(
                      rateOfChangeVariable.toString(),
                      style: textStyle,
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.black26,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          controller.clear();
                          controller2.clear();
                          controller3.clear();
                          controller4.clear();
                          setState(() {});
                        },
                        child: const Text(
                          "Clear",
                          style: textStyle,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text("Find Initial Value / b"),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "y",
                    style: textStyle,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    color: Colors.black26,
                    height: 50,
                    width: 400,
                    child: TextFormField(
                      controller: controller5,
                      style: textStyle,
                      keyboardType: TextInputType.number,
                      onChanged: (value) =>
                          value != "" ? y = double.parse(value) : null,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "x",
                    style: textStyle,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    color: Colors.black26,
                    height: 50,
                    width: 400,
                    child: TextFormField(
                      controller: controller6,
                      style: textStyle,
                      keyboardType: TextInputType.number,
                      onChanged: (value) =>
                          value != "" ? x = double.parse(value) : null,
                    ),
                  )
                ],
              ),
              Container(
                color: Colors.black26,
                width: double.infinity,
                child: Text(
                  "Rate of Change / m: $rateOfChangeVariable",
                  style: textStyle,
                ),
              ),
              Container(
                color: Colors.black26,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          initialValueVariable =
                              initialValue(y, x, rateOfChange(x1, y1, x2, y2));
                          setState(() {});
                        },
                        child: const Text("Calculate")),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      initialValueVariable.toString(),
                      style: textStyle,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.black26,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          controller5.clear();
                          controller6.clear();
                        },
                        child: const Text("Clear")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

double rateOfChange(double x1, double y1, double x2, double y2) {
  final double y = y2 - y1;
  final double x = x2 - x1;

  return y / x;
}

double initialValue(double y, double x, double rateOfChange) {
  final mx = rateOfChange * x;
  return y - mx;
}
