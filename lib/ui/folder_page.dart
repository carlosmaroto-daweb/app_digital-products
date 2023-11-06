import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:appclients/common/nav.dart';
import 'package:appclients/common/file.dart';
import 'package:appclients/ui/documents_page.dart';

class FolderPage extends StatefulWidget {
  const FolderPage({super.key});

  @override
  State<FolderPage> createState() => _FolderPageState();
}

class _FolderPageState extends State<FolderPage> {
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
            Navigator.of(context).push(
                CupertinoPageRoute(builder: (_) => const DocumentsPage()));
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
                icon: const Icon(Icons.list_outlined, size: 30.0),
                tooltip: 'Abrir perfil',
                onPressed: () {
                  // handle the press
                },
              ),
            ),
          ),
        ],
      ),
      body: Stack(children: [
        SizedBox(
            width: returnResponsiveWidth(context, 0.95),
            height: returnResponsiveHeight(context, 0.95),
            child: ListView(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: returnResponsiveWidth(context, 0.05)),
                  child: InkWell(
                    onTap: () {},
                    child: const Column(
                      children: [
                        Icon(Icons.insert_drive_file_outlined,
                            color: Colors.white, size: 100),
                        Text(
                          'Nombre',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
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
              ]),
            ])),
      ]),
      bottomNavigationBar: const Nav(0),
    );
  }
}
