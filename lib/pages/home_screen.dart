import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hotline_app/pages/search_screen.dart';
import 'package:hotline_app/utils/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Emergency Hotline'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return SearchPage();
                  },
                ),
              );
            },
            icon: const Icon(FluentSystemIcons.ic_fluent_search_regular),
          ),
        ],
      ),
      backgroundColor: Styles.bgColor,
      body: Center(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("lib/images/emergency-call.png"))),
            ),
            const Gap(20),
            Text(
              'HelpConnect',
              style: Styles.headLineStyle,
            ),
            const Gap(25),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return SearchPage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(300, 45),
                shape: const StadiumBorder(),
                elevation: 0,
              ),
              child: Row(
                children: [
                  const Icon(
                    FluentSystemIcons.ic_fluent_search_regular,
                    color: Color.fromARGB(255, 148, 148, 148),
                  ),
                  const Gap(6),
                  Text(
                    "Search Places",
                    style: Styles.headLineStyle4,
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
