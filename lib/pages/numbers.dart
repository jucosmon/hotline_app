import 'package:clipboard/clipboard.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:hotline_app/pages/home_screen.dart';
import 'package:hotline_app/utils/app_style.dart';
import 'package:gap/gap.dart';
import 'package:hotline_app/utils/details.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  final List<Details> details1 = [
    Details(
        name: 'Alburquerque Rural Health Unit',
        address: 'Alburquerque, Bohol',
        number: "(038) 539-9223/(0999) 586-6464"),
    Details(
        name: 'Alicia Rural Health Unit and Birthing Center',
        address: 'POBLACION (CALINGGANAY), Alicia, Bohol',
        number: '(0917) 888-6547'),
    Details(
        name: 'ANDA RURAL HEALTH UNIT AND BIRTHING CENTER',
        address: 'POBLACION, Anda, Bohol',
        number: '(0928) 610-7611'),
    Details(
        name: 'Antequera Community Hospital',
        address: 'Poblacion, Antequera, Bohol',
        number: '411-4408'),
    Details(
        name: 'BACLAYON RURAL HEALTH UNIT',
        address: 'Poblacion, Baclayon, Bohol',
        number: '(038) 540-9280/(0921) 214-0029'),
    Details(
        name: 'BALILIHAN MUNICIPAL HEALTH OFFICE',
        address: 'Del Carmen Este, Balilihan, Bohol',
        number: '(0922) 870 9177'),
    Details(
        name: 'BATUAN RURAL HEALTH UNIT',
        address: 'POBLACION SUR, Batuan, Bohol',
        number: '(038) 533-9546/(0946) 626-9003'),
    Details(
        name: 'BIEN UNIDO RURAL HEALTH UNIT',
        address: 'POBLACION (BIEN UNIDO), Bien Unido, Bohol',
        number: '(0933) 866-7296'),
    Details(
        name: 'BILAR MUNICIPAL HEALTH OFFICE',
        address: 'POBLACION, Bilar, Bohol',
        number: '(0920) 981-3608/ (038) 535-0012'),
    Details(
        name: 'BUENAVISTA RURAL HEALTH UNIT',
        address: 'POBLACION, Buenavista, Bohol',
        number: '(0966) 834-4553/(0947) 201-4784'),
    Details(
        name: 'Calape Mother and Child Hospital, Calape, Bohol',
        address: 'Tagbilaran North Road, Calape, Bohol',
        number: '0385078050'),
    Details(
        name: 'Candijay Community Hospital',
        address: 'POBLACION, Candijay, Bohol',
        number: '+63 38 562 0022, +63 385108292, 0915 541 3569'),
    Details(
        name: 'IMAP LYING-IN CLINIC, INC',
        address: 'Purok 4, Barangay Tangoan, Carmen Bohol Philippines',
        number: '(0930) 910-1264'),
    Details(
        name: 'CATIGBIAN – MAIN HEALTH CENTER AND LYING IN',
        address: 'POBLACION WESTE, Catigbian, Bohol',
        number: '(038) 416-2326/(0920) 918-1327'),
    Details(
        name: 'Clarin Community Hospital',
        address: 'X279+G2X, Bonbon Barangay Rd, Clarin, Bohol',
        number: '(038) 509 9122'),
    Details(
        name: 'Ace Medical Center Bohol:',
        address: '0368 Carlos P. Garcia East Avenue, Tagbilaran City, Bohol',
        number: '(038) 500-8288'),
  ];
  /* List<String> name = [
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
  */
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
                                          Clipboard.setData(ClipboardData(
                                                  text: numbers[index]))
                                              .then((_) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(const SnackBar(
                                                    content: Text(
                                                        "copied to clipboard")));
                                          });
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
                          onPressed: () {
                            FlutterPhoneDirectCaller.callNumber(numbers[index]);
                          },
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
