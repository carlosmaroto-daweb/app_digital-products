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
  List<List<News>> globalListNews = [];
  List<News> popularNews = [];
  List<News> normNews = [];
  List<News> lawNews = [];
  List<News> otherNews = [];
  int _selectedIndex = 0;
  bool _enableSearch = false;

  double returnResponsiveWidth(context, double originalPercentValue) {
    return MediaQuery.of(context).size.width * originalPercentValue;
  }

  double returnResponsiveHeight(context, double originalPercentValue) {
    return MediaQuery.of(context).size.height * originalPercentValue;
  }

  @override
  void initState() {
    super.initState();
    popularNews.add(News(0, "Nombre completo de la noticia popular 1"));
    popularNews.add(News(1, "Nombre completo de la noticia popular 2"));
    popularNews.add(News(2, "Nombre completo de la noticia popular 3"));
    popularNews.add(News(3, "Nombre completo de la noticia popular 4"));
    popularNews.add(News(4, "Nombre completo de la noticia popular 5"));
    popularNews.add(News(5, "Nombre completo de la noticia popular 6"));

    normNews.add(News(0, "Nombre completo de la noticia de normativa 1"));
    normNews.add(News(1, "Nombre completo de la noticia de normativa 2"));
    normNews.add(News(2, "Nombre completo de la noticia de normativa 3"));
    normNews.add(News(3, "Nombre completo de la noticia de normativa 4"));
    normNews.add(News(4, "Nombre completo de la noticia de normativa 5"));
    normNews.add(News(5, "Nombre completo de la noticia de normativa 6"));

    lawNews.add(News(0, "Nombre completo de la noticia de leyes 1"));
    lawNews.add(News(1, "Nombre completo de la noticia de leyes 2"));
    lawNews.add(News(2, "Nombre completo de la noticia de leyes 3"));
    lawNews.add(News(3, "Nombre completo de la noticia de leyes 4"));
    lawNews.add(News(4, "Nombre completo de la noticia de leyes 5"));
    lawNews.add(News(5, "Nombre completo de la noticia de leyes 6"));

    otherNews.add(News(0, "Nombre completo de otras noticias 1"));
    otherNews.add(News(1, "Nombre completo de otras noticias 2"));
    otherNews.add(News(2, "Nombre completo de otras noticias 3"));
    otherNews.add(News(3, "Nombre completo de otras noticias 4"));
    otherNews.add(News(4, "Nombre completo de otras noticias 5"));
    otherNews.add(News(5, "Nombre completo de otras noticias 6"));

    globalListNews.add(popularNews);
    globalListNews.add(normNews);
    globalListNews.add(lawNews);
    globalListNews.add(otherNews);
  }

  @override
  Widget build(BuildContext context) {
    List<News> listNews = getListNews();
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
              InkWell(
                onTap: () {
                  setState(() {
                    if (_enableSearch) {
                      _enableSearch = false;
                    } else {
                      _enableSearch = true;
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: getIcon()),
                ),
              ),
              getTypeList(),
            ]),
            Padding(
              padding:
                  EdgeInsets.only(top: returnResponsiveHeight(context, 0.033)),
              child: SizedBox(
                width: returnResponsiveWidth(context, 0.95),
                height: returnResponsiveHeight(context, 0.68),
                child: ListView.builder(
                    itemCount: listNews.length,
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
                                              '${listNews[index].title}',
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

  Widget getIcon() {
    if (_enableSearch) {
      return const Icon(Icons.chevron_left,
          color: Color.fromRGBO(45, 43, 43, 1), size: 25);
    } else {
      return const Icon(Icons.search,
          color: Color.fromRGBO(45, 43, 43, 1), size: 25);
    }
  }

  Widget getTypeList() {
    if (_enableSearch) {
      return Container(
        width: returnResponsiveWidth(context, 0.8),
        height: 40,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(63, 62, 62, 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextFormField(
          style: const TextStyle(
              fontWeight: FontWeight.w400, fontSize: 19, color: Colors.white70),
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: IconButton(
              padding:
                  EdgeInsets.only(left: returnResponsiveWidth(context, 0.03)),
              icon: const Icon(Icons.search, color: Colors.white, size: 36.0),
              onPressed: () {
                // handle the press
              },
            ),
            hintText: 'Buscar por nombre',
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 19,
                color: Colors.white70),
          ),
        ),
      );
    } else {
      return Row(
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: getBackgroundColor(0),
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.all(0),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                minimumSize: const Size(85, 0),
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text('Popular',
                    style: TextStyle(color: getFontColor(0), fontSize: 13)),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: getBackgroundColor(1),
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.all(0),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                minimumSize: const Size(85, 0),
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text('Normativa',
                    style: TextStyle(color: getFontColor(1), fontSize: 13)),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: getBackgroundColor(2),
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.all(0),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                minimumSize: const Size(85, 0),
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text('Leyes',
                    style: TextStyle(color: getFontColor(2), fontSize: 13)),
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: getBackgroundColor(3),
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.all(0),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                minimumSize: const Size(85, 0),
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text('Otros',
                    style: TextStyle(color: getFontColor(3), fontSize: 13)),
              )),
        ],
      );
    }
  }

  Color getBackgroundColor(index) {
    if (_selectedIndex == index) {
      return const Color.fromRGBO(243, 216, 78, 0.9);
    } else {
      return Colors.white;
    }
  }

  Color getFontColor(index) {
    if (_selectedIndex == index) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  List<News> getListNews() {
    return globalListNews[_selectedIndex];
  }
}
