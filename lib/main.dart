import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;
import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

var news = [];
String str = "";

Widget drawer(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: 300,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Лента новостей",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                Container(height: 180, child: Image.asset("assets/poly.png"))
              ]),
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Экзаменационное задание по дисциплине "Разработка безопасных мобильных приложений". Московский Политех, 12 ноября 2021 г',
            textAlign: TextAlign.center,
          ),
        ),
        ListTile(
          title: Container(
            height: height / 2.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Автор: laskinvl@yandex.ru',
                ),
                Text(
                  'https://github.com/LaskinV/projnews ',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset("assets/poly.png"),
          nextScreen: MyHomePage(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.indigo),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        title: Text("Каталог"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            separatorBuilder: (context, index) =>
                Divider(color: Colors.grey[50]),
            padding: const EdgeInsets.only(right: 8.0, left: 8.0),
            itemCount: news.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black87),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListTile(
                    leading: Container(
                      width: 80,
                      child: Image.network(
                          "https://new.mospolytech.ru/${news[index].children[0].children[0].children[0].children[0].attributes['data-src']}"),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text(news[index]
                          .children[0]
                          .children[0]
                          .children[2]
                          .children[0]
                          .text
                          .trim()),
                    ),
                    subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Text(str),
                          Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(news[index]
                                    .children[0]
                                    .children[0]
                                    .children[1]
                                    .text
                                    .trim()),
                              )),
                        ]),
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _loadData();
        },
        child: const Icon(Icons.refresh),
        backgroundColor: Colors.indigo,
      ),
    );
  }

  _loadData() async {
    Uri uri = Uri.parse('https://new.mospolytech.ru/news/');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var document = response.body;
      // print(document);
      print("!!!!!");
      print(parse(document)
          .getElementsByClassName("card-news-list__item")[0]
          .children[0]
          .children[0]
          .children[0]
          .children[0]
          .attributes['data-src']);
      setState(() {
        news = parse(document).getElementsByClassName("card-news-list__item");
        str = news.length.toString();
      });
    }
  }
}
