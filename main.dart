import 'package:calender_picker/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:emojis/emojis.dart';
import 'package:emojis/emoji.dart';
import 'package:intl/intl.dart';
import 'package:qube_health_task/widget/feelings_widget.dart';

import 'model/feelings_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Emoji? smile = Emoji.byName('hi');
  DateTime _selectedDate = DateTime.now();
  List<String> assetList = [
    'assets/y1.jpeg',
    'assets/y2.jpeg',
    'assets/y3.jpeg',
    'assets/y4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Feelings History'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Your feelings from last 30 days',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 180,
                child: Row(children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: FeelingsModel.feelingList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return FeelingsWidget(
                            feelingsModel: FeelingsModel.feelingList[index],
                          );
                        }),
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    child: TextButton(
                      onPressed: null,
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xff2E8BC0))),
                      child: Text(
                        DateFormat('dd MMM yyyy').format(_selectedDate),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CalenderPicker(
                      DateTime.now(),
                      initialSelectedDate: DateTime.now(),
                      selectionColor: Colors.black,
                      selectedTextColor: Colors.white,
                      height: 120,
                      onDateChange: (date) {
                        // New date selected
                        setState(() {
                          _selectedDate = date;
                          print('_selectedDate--$_selectedDate');
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 100,
                  child: ListView.builder(
                      itemCount: FeelingsModel.feelingList.length,
                      itemBuilder: (context, index) {
                        FeelingsModel feelingsModel =
                            FeelingsModel.feelingList[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                feelingsModel.time,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Expanded(
                                child: Text(
                                  feelingsModel.emoji +
                                      ' ' +
                                      feelingsModel.feelingType,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        );
                      })),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'You May Find This Interesting',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8),
                child: Text(
                    'Switch to this theme, preserving my homepage content: This option does not add the theme’s demo content to your site. Your existing content will be presented i'
                    ' the new theme.  Replace my homepage content with the theme’s homepage: This option will add the theme’s demo content to your site so that .......'),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    itemCount: assetList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: Border.all(width: 1),

                        elevation: 20,
                        borderOnForeground: true,
                        margin: const EdgeInsets.only(left: 8, right: 8),
                        child: Image.asset(assetList[index], fit: BoxFit.cover),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
