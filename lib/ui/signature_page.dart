import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:appclients/common/nav.dart';
import 'package:appclients/ui/settings_page.dart';
import 'package:appclients/common/file.dart';

class SignaturePage extends StatefulWidget {
  const SignaturePage({super.key});

  @override
  State<SignaturePage> createState() => _SignaturePageState();
}

class _SignaturePageState extends State<SignaturePage> {
  List<File> pdfFiles = [];

  double returnResponsiveWidth(context, double originalPercentValue) {
    return MediaQuery.of(context).size.width * originalPercentValue;
  }

  double returnResponsiveHeight(context, double originalPercentValue) {
    return MediaQuery.of(context).size.height * originalPercentValue;
  }

  @override
  void initState() {
    super.initState();
    pdfFiles.add(File(0, "Nombre1.pdf"));
    pdfFiles.add(File(1, "Nombre2.pdf"));
    pdfFiles.add(File(2, "Nombre3.pdf"));
    pdfFiles.add(File(3, "Nombre4.pdf"));
    pdfFiles.add(File(4, "Nombre5.pdf"));
    pdfFiles.add(File(5, "Nombre6.pdf"));
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
          'Firmar documentación',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        ),
      ),
      body: Stack(children: [
        Column(
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
                      'Documentos pendientes de firmar',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: returnResponsiveWidth(context, 0.95),
              height: returnResponsiveHeight(context, 0.2),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pdfFiles.length,
                  itemBuilder: ((context, index) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              onLongPress: () {},
                              child: Column(
                                children: [
                                  const Icon(Icons.insert_drive_file_outlined,
                                      color: Colors.white, size: 100),
                                  Text(
                                    '${pdfFiles[index].title}',
                                    style: const TextStyle(
                                        color: Colors.white70,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Text(
                                    '27/10/2023\n10,2 MB',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]);
                  })),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.02)),
              child: SizedBox(
                width: returnResponsiveWidth(context, 0.8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      color: Colors.white60,
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: returnResponsiveHeight(context, 0.02)),
                      child: const Text(
                        'Dibuje la firma en el recuadro',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
      bottomNavigationBar: const Nav(4),
    );
  }
}
