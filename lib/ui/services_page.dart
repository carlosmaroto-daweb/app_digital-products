import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:appclients/common/nav.dart';
import 'package:appclients/ui/settings_page.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  bool _createServices = false;

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
                .push(CupertinoPageRoute(builder: (_) => const SettingsPage()));
          },
        ),
        title: const Text(
          'Mis servicios',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        ),
        actions: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(right: returnResponsiveWidth(context, 0.05)),
            child: SizedBox(
              height: 50.0,
              width: 50.0,
              child: IconButton(
                padding: const EdgeInsets.all(0.0),
                icon: const Icon(Icons.add, size: 30.0),
                onPressed: () {
                  _createServices = true;
                },
              ),
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.03)),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: returnResponsiveWidth(context, 0.33),
                      height: 150,
                      child: const Column(
                        children: [
                          Icon(Icons.settings, color: Colors.white, size: 100),
                          Text(
                            'Protección\nde datos',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: returnResponsiveWidth(context, 0.33),
                      height: 150,
                      child: const Column(
                        children: [
                          Icon(Icons.settings, color: Colors.white, size: 100),
                          Text(
                            'Documentación\nempleados',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: returnResponsiveWidth(context, 0.33),
                      height: 150,
                      child: const Column(
                        children: [
                          Icon(Icons.settings, color: Colors.white, size: 100),
                          Text(
                            'Documentación\nproveedores',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: returnResponsiveWidth(context, 0.33),
                    height: 150,
                    child: const Column(
                      children: [
                        Icon(Icons.settings, color: Colors.white, size: 100),
                        Text(
                          'Facturas',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: returnResponsiveWidth(context, 0.33),
                    height: 150,
                    child: const Column(
                      children: [
                        Icon(Icons.settings, color: Colors.white, size: 100),
                        Text(
                          'Asesoría',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: returnResponsiveWidth(context, 0.33),
                    height: 150,
                    child: const Column(
                      children: [
                        Icon(Icons.settings, color: Colors.white, size: 100),
                        Text(
                          'Otros',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: returnResponsiveWidth(context, 0.33),
                    height: 150,
                    child: const Column(
                      children: [
                        Icon(Icons.settings, color: Colors.white, size: 100),
                        Text(
                          'Facturas',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: returnResponsiveWidth(context, 0.33),
                    height: 150,
                    child: const Column(
                      children: [
                        Icon(Icons.settings, color: Colors.white, size: 100),
                        Text(
                          'Asesoría',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: SizedBox(
                    width: returnResponsiveWidth(context, 0.33),
                    height: 150,
                    child: const Column(
                      children: [
                        Icon(Icons.settings, color: Colors.white, size: 100),
                        Text(
                          'Otros',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ]),
      bottomNavigationBar: const Nav(4),
    );
  }
}
