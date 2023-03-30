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
        number: "(0999) 586-6464"),
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
        number: '(0921) 214-0029'),
    Details(
        name: 'BALILIHAN MUNICIPAL HEALTH OFFICE',
        address: 'Del Carmen Este, Balilihan, Bohol',
        number: '(0922) 870 9177'),
    Details(
        name: 'BATUAN RURAL HEALTH UNIT',
        address: 'POBLACION SUR, Batuan, Bohol',
        number: '(0946) 626-9003'),
    Details(
        name: 'BIEN UNIDO RURAL HEALTH UNIT',
        address: 'POBLACION (BIEN UNIDO), Bien Unido, Bohol',
        number: '(0933) 866-7296'),
    Details(
        name: 'BILAR MUNICIPAL HEALTH OFFICE',
        address: 'POBLACION, Bilar, Bohol',
        number: '(038) 535-0012'),
    Details(
        name: 'BUENAVISTA RURAL HEALTH UNIT',
        address: 'POBLACION, Buenavista, Bohol',
        number: '(0947) 201-4784'),
    Details(
        name: 'Calape Mother and Child Hospital, Calape, Bohol',
        address: 'Tagbilaran North Road, Calape, Bohol',
        number: '0385078050'),
    Details(
        name: 'Candijay Community Hospital',
        address: 'POBLACION, Candijay, Bohol',
        number: '0915 541 3569'),
    Details(
        name: 'IMAP LYING-IN CLINIC, INC',
        address: 'Purok 4, Barangay Tangoan, Carmen Bohol Philippines',
        number: '(0930) 910-1264'),
    Details(
        name: 'CATIGBIAN – MAIN HEALTH CENTER AND LYING IN',
        address: 'POBLACION WESTE, Catigbian, Bohol',
        number: '(0920) 918-1327'),
    Details(
        name: 'Clarin Community Hospital',
        address: 'X279+G2X, Bonbon Barangay Rd, Clarin, Bohol',
        number: '(038) 509 9122'),
    Details(
        name: 'Ace Medical Center Bohol:',
        address: '0368 Carlos P. Garcia East Avenue, Tagbilaran City, Bohol',
        number: '(038) 500-8288'),
  ];

  final List<Details> details2 [

    Details(name: 'Albuquerque Police Station', address: 'JX72+7XG, Eastern Poblacion, Alburquerque, Alburquerque, Bohol', number: '6338 539-9149'),
    Details(name: 'Alicia Police Station', address: 'VCXR+F5J, Bohol Circumferential Rd, Alicia, Bohol', number: '+6338 521-2270'),
    Details(name: 'Anda Police Station', address: 'PHVG+6GG, Anda, Bohol', number: '+63 920-895-0736'),
    Details(name: 'Antequera Police Station', address: 'Poblacion, Antequera Bohol Antequera, Philippines', number: '+6338 506-5007'),
    Details(name: 'Baclayon Police Station', address: 'JWC7+WFM, Baclayon, Bohol', number: '+6338 540-9301'),
    Details(name: 'Balilihan Police Station', address: 'QX4C+48F, V. Chatto St, Balilihan, 6342 Bohol', number: '0926 989 0606'),
    Details(name: 'Batuan Police Station', address: 'Q4JW+JVH, Loay Interior Road, Batuan, Bohol', number: '+6338 533-9101'),
    Details(name: 'Bien Unido Police Station', address: '49W9+CGM, National Road, Bien Unido, 6326 Bohol', number: '+6338 517-2146'),
    Details(name: 'Bilar Police Station', address: 'P422+QXX, Loay Interior Road, Bilar, Bohol', number: '+6338 535-9076'),
    Details(name: 'Buenavista Police Station', address: '34J6+PM5, Maximo Leopando St, Buenavista, Bohol', number: '+6338 9134-9127'),
    Details(name: 'Calape Police Station', address: 'VVVJ+JM4, Calape, Bohol', number: '+6338 507-5000'),
    Details(name: 'Candijay Police Station', address: 'Poblacion, Candijay, 6312 Bohol', number: '6338 526-0016'),
    Details(name: 'Carmen Police Station', address: 'R5FX+H5X, Carmen Municipal Hall, Carmen, Carmen, Bohol', number: '+6338 525-9222'),
    Details(name: 'Catigbian Police Station', address: 'V242+2QF, Catigbian, Bohol', number: '+6338 507-3106'),
    Details(name: 'TagbilaranPolice Station', address: 'MV37+GV5, Tagbilaran City, Bohol', number: '+6338 411-4325'),

  ];

  final List<Details> details3 = [

    Details(name: 'Albuquerque Fire Rescue', address: 'ABQ Fire Rescue Administration HQ', number: '505-833-7300'),
    Details(name: 'Alicia Fire Station Bohol', address: 'unknown', number: '0926 035 5305'),
    Details(name: 'Anda Fire Station Rescue', address: 'Anda, Bohol', number: '+6338 528-2009'),
    Details(name: 'Antequera Fire Station', address: 'Antequera, Bohol', number: '+6338 506-5007'),
    Details(name: 'Baclayon Fire Station', address: 'Baclayon, Bohol', number: '540-9280'),
    Details(name: 'Balilihan Fire Station', address: 'Balilihan, Bohol', number: '09228580197'),
    Details(name: 'Batuan Fire Station', address: 'Batuan, Bohol', number: '533-9027'),
    Details(name: 'Bien Unido Fire Station', address: 'Bien Unido, Bohol', number: '09364102138'),
    Details(name: 'Bilar Fire Station', address: 'Bilar, Bohol', number: '09327717428'),
    Details(name: 'Buenavista Fire Station', address: 'Buenavista, Bohol', number: '09269033421'),
    Details(name: 'Calape Fire Station', address: 'Calape, Bohol', number: '507-9023'),
    Details(name: 'Candijay Fire Station', address: 'Candijay, Bohol', number: '0917-7928300'),
    Details(name: 'Carmen Fire Station', address: 'Poblacion, Carmen, 6319 Bohol, Philippines', number: '525-9011'),
    Details(name: 'Catigbian Fire Station', address: 'Catigbian, Bohol', number: '+639177052243'),
    Details(name: 'BFP R7 Tagbilaran City Fire Station', address: 'E. Calceta Street, Cogon District, Tagbilaran City, Bohol', number: '501-8474'),

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
