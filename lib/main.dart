import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      home: MyHomePage(),
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
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        title: Text("Каталог"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListTile(
                  leading: FlutterLogo(size: 60.0),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text('Заголовок списка'),
                  ),
                  subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text("29 ноября")),
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListTile(
                  leading: FlutterLogo(size: 60.0),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text('Заголовок списка'),
                  ),
                  subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text("29 ноября")),
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListTile(
                  leading: FlutterLogo(size: 60.0),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text('Заголовок списка'),
                  ),
                  subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text("29 ноября")),
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListTile(
                  leading: FlutterLogo(size: 60.0),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text('Заголовок списка'),
                  ),
                  subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text("29 ноября")),
                        ),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black87),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: ListTile(
                  leading: FlutterLogo(size: 60.0),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text('Заголовок списка'),
                  ),
                  subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text("29 ноября")),
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
