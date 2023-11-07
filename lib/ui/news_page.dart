import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:appclients/ui/main_page.dart';
import 'package:appclients/common/nav.dart';
import 'package:appclients/common/news.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<News> popularNews = [];

  double returnResponsiveWidth(context, double originalPercentValue) {
    return MediaQuery.of(context).size.width * originalPercentValue;
  }

  double returnResponsiveHeight(context, double originalPercentValue) {
    return MediaQuery.of(context).size.height * originalPercentValue;
  }

  @override
  void initState() {
    super.initState();
    popularNews.add(News(0, "Nombre completo de la noticia 1"));
    popularNews.add(News(1, "Nombre completo de la noticia 2"));
    popularNews.add(News(2, "Nombre completo de la noticia 3"));
    popularNews.add(News(3, "Nombre completo de la noticia 4"));
    popularNews.add(News(4, "Nombre completo de la noticia 5"));
    popularNews.add(News(5, "Nombre completo de la noticia 6"));
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
          'Noticias',
          style: TextStyle(
              color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        ),
      ),
      body: Stack(children: [
        Column(
          children: [
            Row(children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.search,
                        color: Color.fromRGBO(45, 43, 43, 1), size: 25)),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.all(0),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: const Size(85, 0),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('Popular',
                        style: TextStyle(color: Colors.black, fontSize: 13)),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.all(0),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: const Size(85, 0),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('Normativa',
                        style: TextStyle(color: Colors.black, fontSize: 13)),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.all(0),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: const Size(85, 0),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('Leyes',
                        style: TextStyle(color: Colors.black, fontSize: 13)),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.all(0),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: const Size(85, 0),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('Otros',
                        style: TextStyle(color: Colors.black, fontSize: 13)),
                  )),
            ]),
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.04)),
              child: SizedBox(
                width: returnResponsiveWidth(context, 0.95),
                height: returnResponsiveHeight(context, 0.68),
                child: ListView.builder(
                    itemCount: popularNews.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: returnResponsiveHeight(context, 0.02)),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: SizedBox(
                                width: returnResponsiveWidth(context, 0.9),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 90,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image:
                                              AssetImage('assets/img/news.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: returnResponsiveWidth(
                                              context, 0.05)),
                                      child: SizedBox(
                                        width:
                                            returnResponsiveWidth(context, 0.6),
                                        child: Column(
                                          children: [
                                            Text(
                                              '${popularNews[index].title}',
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: returnResponsiveHeight(
                                                      context, 0.02)),
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.schedule,
                                                          color: Colors.white60,
                                                          size: 20),
                                                      Text(
                                                        ' Hace 4 horas',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white60,
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.visibility,
                                                          color: Colors.white60,
                                                          size: 20),
                                                      Text(
                                                        ' 345 visitas',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white60,
                                                            fontSize: 15),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: returnResponsiveHeight(context, 0.02)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: returnResponsiveWidth(context, 0.8),
                                    child: const Divider(
                                      color: Colors.white60,
                                      thickness: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    })),
              ),
            )
          ],
        ),
      ]),
      bottomNavigationBar: const Nav(1),
    );
  }
}
