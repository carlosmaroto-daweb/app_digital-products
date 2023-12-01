import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:appclients/common/nav.dart';
import 'package:appclients/ui/settings_page.dart';
import 'package:appclients/common/service.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  List<Service> services = [];

  @override
  void initState() {
    super.initState();
    services.add(Service(0, "Servicio 1"));
    services.add(Service(1, "Servicio 2"));
    services.add(Service(2, "Servicio 3"));
    services.add(Service(3, "Servicio 4"));
    services.add(Service(4, "Servicio 5"));
    services.add(Service(5, "Servicio 6"));
    services.add(Service(6, "Servicio 7"));
    services.add(Service(7, "Servicio 8"));
    services.add(Service(8, "Servicio 9"));
    services.add(Service(9, "Servicio 10"));
    services.add(Service(10, "Servicio 11"));
    services.add(Service(11, "Servicio 12"));
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Servicio 1", child: Text("Servicio 1")),
      const DropdownMenuItem(value: "Servicio 2", child: Text("Servicio 2")),
      const DropdownMenuItem(value: "Servicio 3", child: Text("Servicio 3")),
      const DropdownMenuItem(value: "Servicio 4", child: Text("Servicio 4")),
    ];
    return menuItems;
  }

  _showSimpleModalDialog(context) {
    showDialog(
      context: context,
      builder: (context) {
        String selectedValue = "Servicio 1";
        bool email = false;
        bool phone = false;
        bool commercial = false;
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              child: Container(
                constraints: const BoxConstraints(maxHeight: 350),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Text(
                        'Sobre que servicio desea solictar información',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.black,
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: returnResponsiveWidth(context, 0.8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: DropdownButton(
                                  value: selectedValue,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedValue = newValue!;
                                    });
                                  },
                                  items: dropdownItems),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (email) {
                                    email = false;
                                  } else {
                                    email = true;
                                  }
                                });
                              },
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: email,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        email = value!;
                                      });
                                    },
                                  ),
                                  const Text(
                                    'Vía email',
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (phone) {
                                    phone = false;
                                  } else {
                                    phone = true;
                                  }
                                });
                              },
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: phone,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        phone = value!;
                                      });
                                    },
                                  ),
                                  const Text(
                                    'Vía telefónica',
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (commercial) {
                                    commercial = false;
                                  } else {
                                    commercial = true;
                                  }
                                });
                              },
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: commercial,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        commercial = value!;
                                      });
                                    },
                                  ),
                                  const Text(
                                    'Visita comercial',
                                    style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: returnResponsiveHeight(context, 0.02)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          const Color.fromRGBO(11, 77, 69, 1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 20, 10),
                                      elevation: 0,
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Solicitar información',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

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
                  _showSimpleModalDialog(context);
                },
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: returnResponsiveWidth(context, 0.8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveHeight(context, 0.02)),
                  child: const Text(
                    'Mis servicios contratados',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
            child: SizedBox(
              width: returnResponsiveWidth(context, 1),
              height: returnResponsiveHeight(context, 0.7),
              child: ListView.builder(
                  itemCount: services.length,
                  itemBuilder: ((context, index) {
                    return Column(children: [
                      SizedBox(
                        width: returnResponsiveWidth(context, 0.9),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: returnResponsiveHeight(context, 0.02)),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.verified_user,
                                    color: Color.fromRGBO(11, 77, 69, 1),
                                    size: 75.0),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: returnResponsiveHeight(
                                          context, 0.02)),
                                  child: Text(
                                    '${services[index].title}',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontFamily: 'Raleway',
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]);
                  })),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Nav(4),
    );
  }
}
