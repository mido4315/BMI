import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI CALCULATOR',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: elevatedButtonColor ,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10))),
        iconTheme: const IconThemeData(color: Colors.white),
        textTheme: const TextTheme(
            bodyText1: TextStyle(
          color: Colors.white60,
          fontSize: 22,
        )),
        cardColor: cardColor,
        scaffoldBackgroundColor: backGroundColor,
        appBarTheme: const AppBarTheme(
          color: backGroundColor,
        ),
        primaryColor: backGroundColor,
      ),
      home: const MyHomePage(title: 'BMI CALCULATOR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double sliderValue = 175;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.male,
                        size: 120,
                      ),
                      Text(
                        'MALE',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.female,
                        size: 120,
                      ),
                      Text(
                        'FEMALE',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: sizedBoxHeight,
          ),
          Card(
            child: Column(
              children: [
                Text('HEIGHT', style: Theme.of(context).textTheme.bodyText1),
                Text('${sliderValue.round()}cm',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 50,
                          color: Colors.white,
                        )),
                Slider(
                  value: sliderValue,
                  min: 100,
                  max: 250,
                  onChanged: (v) {
                    setState(() {
                      sliderValue = v;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: sizedBoxHeight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    children: [
                      Text(
                        'WEIGHT',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        '$weight',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: const Icon(
                              Icons.remove,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              size: 30,
                            ),
                          )
                          // FloatingActionButton(onPressed: (){},child: Icon(Icons.add),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    children: [
                      Text(
                        'AGE',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        '$age',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            child: const Icon(
                              Icons.remove,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              size: 30,
                            ),
                          )
                          // FloatingActionButton(onPressed: (){},child: Icon(Icons.add),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 65,),
          Expanded(

            child: InkWell(
              onTap: () {},
              child: Ink(
                color: const Color(0xFFeb1555),
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
