import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:appclients/ui/main_page.dart';
import 'package:appclients/common/nav.dart';

class DocumentsPage extends StatefulWidget {
  const DocumentsPage({super.key});

  @override
  State<DocumentsPage> createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage> {
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
          'Biblioteca documental',
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
                icon: const Icon(Icons.account_circle, size: 50.0),
                tooltip: 'Abrir perfil',
                onPressed: () {
                  // handle the press
                },
              ),
            ),
          ),
        ],
      ),
      body: Stack(children: []),
      bottomNavigationBar: const Nav(0),
    );
  }
}
