import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:appclients/common/nav.dart';
import 'package:appclients/ui/settings_page.dart';
import 'package:appclients/common/file.dart';

class ReceiptPage extends StatefulWidget {
  const ReceiptPage({super.key});

  @override
  State<ReceiptPage> createState() => _ReceiptPageState();
}

class _ReceiptPageState extends State<ReceiptPage> {
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
    pdfFiles.add(File(6, "Nombre7.pdf"));
    pdfFiles.add(File(7, "Nombre8.pdf"));
    pdfFiles.add(File(8, "Nombre9.pdf"));
    pdfFiles.add(File(9, "Nombre10.pdf"));
    pdfFiles.add(File(10, "Nombre11.pdf"));
    pdfFiles.add(File(11, "Nombre12.pdf"));
    pdfFiles.add(File(12, "Nombre13.pdf"));
    pdfFiles.add(File(13, "Nombre14.pdf"));
    pdfFiles.add(File(14, "Nombre15.pdf"));
    pdfFiles.add(File(15, "Nombre16.pdf"));
    pdfFiles.add(File(16, "Nombre17.pdf"));
    pdfFiles.add(File(17, "Nombre18.pdf"));
    pdfFiles.add(File(18, "Nombre19.pdf"));
    pdfFiles.add(File(19, "Nombre20.pdf"));
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
          'Mis facturas',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
              itemCount: pdfFiles.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: returnResponsiveHeight(context, 0.025)),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/img/pdf.png', scale: 1.5),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: returnResponsiveWidth(context, 0.05)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: returnResponsiveHeight(
                                            context, 0.005)),
                                    child: Text(
                                      '${pdfFiles[index].title}',
                                      style: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: returnResponsiveHeight(
                                            context, 0.01)),
                                    child: const Text(
                                      '27/10/2023 · 10,2 MB',
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: returnResponsiveHeight(
                                            context, 0.005)),
                                    child: SizedBox(
                                      width:
                                          returnResponsiveWidth(context, 0.6),
                                      child: const Divider(
                                        color: Colors.white60,
                                        thickness: 0.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.more_vert,
                                  color: Colors.white, size: 30.0),
                              padding: const EdgeInsets.all(0.0),
                              constraints: const BoxConstraints(),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              }))
        ],
      ),
      bottomNavigationBar: const Nav(4),
    );
  }
}
