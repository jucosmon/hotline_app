import 'package:clipboard/clipboard.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:hotline_app/pages/home_screen.dart';
import 'package:hotline_app/utils/app_style.dart';
import 'package:gap/gap.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  List<String> name = [
    'Dao Police Station',
    'Jagna Local Fire Station',
    'Ramiro Hospital',
  ];

  List<String> address = [
    'New York',
    'London',
    'Paris',
  ];

  List<String> numbers = [
    '0943534545',
    '0900000000',
    '0900000023',
  ];
  String query = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List of Hotline Numbers'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const HomeScreen();
                  },
                ),
              );
            },
            icon: const Icon(FluentSystemIcons.ic_fluent_home_regular),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 60.0, bottom: 60.0, left: 16.0, right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(name[index], style: Styles.headLineStyle),
                            const Gap(10),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    address[index],
                                    style: Styles.headLineStyle4,
                                  ),
                                  const Gap(20),
                                  Row(
                                    children: [
                                      Text(
                                        numbers[index],
                                        style: Styles.numbers,
                                      ),
                                      const Gap(15),
                                      InkWell(
                                        onTap: () {
                                          FlutterClipboard.copy(numbers[index]);
                                        },
                                        child: const Icon(Icons.copy),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Call'),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
