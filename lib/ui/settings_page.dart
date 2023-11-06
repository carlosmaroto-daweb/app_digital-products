import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:appclients/ui/main_page.dart';
import 'package:appclients/common/nav.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  double returnResponsiveWidth(context, double originalPercentValue) {
    return MediaQuery.of(context).size.width * originalPercentValue;
  }

  double returnResponsiveHeight(context, double originalPercentValue) {
    return MediaQuery.of(context).size.height * originalPercentValue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(26, 26, 26, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        leadingWidth: 75,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left, size: 50.0),
          onPressed: () {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (_) => const MainPage()));
          },
        ),
        title: const Text(
          'Acciones',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        ),
      ),
      body: Stack(children: []),
      bottomNavigationBar: const Nav(4),
    );
  }
}
