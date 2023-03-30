import 'package:clipboard/clipboard.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:hotline_app/pages/home_screen.dart';
import 'package:hotline_app/utils/app_style.dart';
import 'package:gap/gap.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  final List<Map<String, dynamic>> details1 = [
    {
      "name": 'Alburquerque Rural Health Unit',
      "address": 'Alburquerque, Bohol',
      "number": "(0999) 586-6464"
    },
    {
      "name": 'Alicia Rural Health Unit and Birthing Center',
      "address": 'POBLACION (CALINGGANAY), Alicia, Bohol',
      "number": '(0917) 888-6547'
    },
    {
      "name": 'ANDA RURAL HEALTH UNIT AND BIRTHING CENTER',
      "address": 'POBLACION, Anda, Bohol',
      "number": '(0928) 610-7611'
    },
    {
      "name": 'Antequera Community Hospital',
      "address": 'Poblacion, Antequera, Bohol',
      "number": '411-4408'
    },
    {
      "name": 'BACLAYON RURAL HEALTH UNIT',
      "address": 'Poblacion, Baclayon, Bohol',
      "number": '(0921) 214-0029'
    },
    {
      "name": 'BALILIHAN MUNICIPAL HEALTH OFFICE',
      "address": 'Del Carmen Este, Balilihan, Bohol',
      "number": '(0921) 214-0029'
    },
    {
      "name": 'BATUAN RURAL HEALTH UNIT',
      "address": 'Poblacion, Baclayon, Bohol',
      "number": '(0946) 626-9003',
    },
    {
      "name": 'BIEN UNIDO RURAL HEALTH UNIT',
      "address": 'POBLACION (BIEN UNIDO), Bien Unido, Bohol',
      "number": '(0933) 866-7296',
    },
    {
      "name": 'BILAR MUNICIPAL HEALTH OFFICE',
      "address": 'POBLACION, Bilar, Bohol',
      "number": '(038) 535-0012',
    },
    {
      "name": 'BUENAVISTA RURAL HEALTH UNIT',
      "address": 'POBLACION, Buenavista, Bohol',
      "number": '(0947) 201-4784',
    },
    {
      "name": 'Calape Mother and Child Hospital, Calape, Bohol',
      "address": 'Tagbilaran North Road, Calape, Bohol',
      "number": '0385078050',
    },
    {
      "name": 'Candijay Community Hospital',
      "address": 'POBLACION, Candijay, Bohol',
      "number": '0915 541 3569',
    },
    {
      "name": 'IMAP LYING-IN CLINIC, INC',
      "address": 'Purok 4, Barangay Tangoan, Carmen Bohol Philippines',
      "number": '(0930) 910-1264',
    },
    {
      "name": 'CATIGBIAN – MAIN HEALTH CENTER AND LYING IN',
      "address": 'POBLACION WESTE, Catigbian, Bohol',
      "number": '(0920) 918-1327',
    },
    {
      "name": 'Clarin Community Hospital',
      "address": 'X279+G2X, Bonbon Barangay Rd, Clarin, Bohol',
      "number": '(038) 509 9122',
    },
    {
      "name": 'Ace Medical Center Bohol:',
      "address": '0368 Carlos P. Garcia East Avenue, Tagbilaran City, Bohol',
      "number": '(038) 500-8288',
    }
  ];

  final List<Map<String, dynamic>> details2 = [
    {
      "name": 'Albuquerque Police Station',
      "address":
          'JX72+7XG, Eastern Poblacion, Alburquerque, Alburquerque, Bohol',
      "number": '6338 539-9149'
    },
    {
      "name": 'Alicia Police Station',
      "address": 'VCXR+F5J, Bohol Circumferential Rd, Alicia, Bohol',
      "number": '+6338 521-2270'
    },
    {
      "name": 'Anda Police Station',
      "address": 'PHVG+6GG, Anda, Bohol',
      "number": '+63 920-895-0736'
    },
    {
      "name": 'Antequera Police Station',
      "address": 'Poblacion, Antequera Bohol Antequera, Philippines',
      "number": '+6338 506-5007'
    },
    {
      "name": 'Baclayon Police Station',
      "address": 'JWC7+WFM, Baclayon, Bohol',
      "number": '+6338 540-9301'
    },
    {
      "name": 'Balilihan Police Station',
      "address": 'QX4C+48F, V. Chatto St, Balilihan, 6342 Bohol',
      "number": '0926 989 0606'
    },
    {
      "name": 'Batuan Police Station',
      "address": 'Q4JW+JVH, Loay Interior Road, Batuan, Bohol',
      "number": '+6338 533-9101'
    },
    {
      "name": 'Bien Unido Police Station',
      "address": '49W9+CGM, National Road, Bien Unido, 6326 Bohol',
      "number": '+6338 517-2146'
    },
    {
      "name": 'Bilar Police Station',
      "address": 'P422+QXX, Loay Interior Road, Bilar, Bohol',
      "number": '+6338 535-9076'
    },
    {
      "name": 'Buenavista Police Station',
      "address": '34J6+PM5, Maximo Leopando St, Buenavista, Bohol',
      "number": '+6338 9134-9127'
    },
    {
      "name": 'Calape Police Station',
      "address": 'VVVJ+JM4, Calape, Bohol',
      "number": '+6338 507-5000'
    },
    {
      "name": 'Candijay Police Station',
      "address": 'Poblacion, Candijay, 6312 Bohol',
      "number": '6338 526-0016'
    },
    {
      "name": 'Carmen Police Station',
      "address": 'R5FX+H5X, Carmen Municipal Hall, Carmen, Carmen, Bohol',
      "number": '+6338 525-9222'
    },
    {
      "name": 'Catigbian Police Station',
      "address": 'V242+2QF, Catigbian, Bohol',
      "number": '+6338 507-3106'
    },
    {
      "name": 'TagbilaranPolice Station',
      "address": 'MV37+GV5, Tagbilaran City, Bohol',
      "number": '+6338 411-4325'
    },
  ];

  final List<Map<String, dynamic>> details3 = [
    {
      "name": 'Albuquerque Fire Rescue',
      "address": 'ABQ Fire Rescue Administration HQ',
      "number": '505-833-7300'
    },
    {
      "name": 'Alicia Fire Station Bohol',
      "address": 'unknown',
      "number": '0926 035 5305'
    },
    {
      "name": 'Anda Fire Station Rescue',
      "address": 'Anda, Bohol',
      "number": '+6338 528-2009'
    },
    {
      "name": 'Antequera Fire Station',
      "address": 'Antequera, Bohol',
      "number": '+6338 506-5007'
    },
    {
      "name": 'Baclayon Fire Station',
      "address": 'Baclayon, Bohol',
      "number": '540-9280'
    },
    {
      "name": 'Balilihan Fire Station',
      "address": 'Balilihan, Bohol',
      "number": '09228580197'
    },
    {
      "name": 'Batuan Fire Station',
      "address": 'Batuan, Bohol',
      "number": '533-9027'
    },
    {
      "name": 'Bien Unido Fire Station',
      "address": 'Bien Unido, Bohol',
      "number": '09364102138'
    },
    {
      "name": 'Bilar Fire Station',
      "address": 'Bilar, Bohol',
      "number": '09327717428'
    },
    {
      "name": 'Buenavista Fire Station',
      "address": 'Buenavista, Bohol',
      "number": '09269033421'
    },
    {
      "name": 'Calape Fire Station',
      "address": 'Calape, Bohol',
      "number": '507-9023'
    },
    {
      "name": 'Candijay Fire Station',
      "address": 'Candijay, Bohol',
      "number": '0917-7928300'
    },
    {
      "name": 'Carmen Fire Station',
      "address": 'Poblacion, Carmen, 6319 Bohol, Philippines',
      "number": '525-9011'
    },
    {
      "name": 'Catigbian Fire Station',
      "address": 'Catigbian, Bohol',
      "number": '+639177052243'
    },
    {
      "name": 'BFP R7 Tagbilaran City Fire Station',
      "address": 'E. Calceta Street, Cogon District, Tagbilaran City, Bohol',
      "number": '501-8474'
    }
  ];
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
              itemCount: details1.length,
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
                            Text(details1[index]["name"].toString(),
                                style: Styles.headLineStyle),
                            const Gap(10),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    details1[index]["address"].toString(),
                                    style: Styles.headLineStyle4,
                                  ),
                                  const Gap(20),
                                  Row(
                                    children: [
                                      Text(
                                        details1[index]["number"].toString(),
                                        style: Styles.numbers,
                                      ),
                                      const Gap(15),
                                      InkWell(
                                        onTap: () {
                                          Clipboard.setData(ClipboardData(
                                                  text: details1[index]
                                                          ["number"]
                                                      .toString()))
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
                            FlutterPhoneDirectCaller.callNumber(
                                details1[index]["number"].toString());
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
