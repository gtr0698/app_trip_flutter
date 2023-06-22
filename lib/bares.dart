// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:app_trip_flutter/criaConta.dart';
import 'package:app_trip_flutter/paginaInicial.dart';

// ignore: use_key_in_widget_constructors
class bares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Melhores Bares'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () => Navigator.pop(context, false),
            ),
          ),
          body: lista(),
        ),
        theme: ThemeData(
            colorScheme: ColorScheme(
                brightness: Brightness.dark,
                primary: Colors.deepOrange.shade500,
                onPrimary: Colors.white,
                secondary: Colors.white,
                onSecondary: Colors.white,
                error: Colors.red,
                onError: Colors.red,
                background: Colors.grey.shade800,
                onBackground: Colors.grey.shade800,
                surface: Colors.transparent,
                onSurface: Colors.white)));
  }
}

class lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Form(
          child: Column(children: [
            barUm(context),
            barDois(context),
            barTres(context),
            barQuatro(context),
          ]),
        ),
      ),
    );
  }
}

Widget barUm(BuildContext context) {
  return InkWell(
    onTap: () {
      /*Navigator.push(context, MaterialPageRoute(builder: (context){
        return criaConta();
      }));*/
      Navigator.defaultRouteName;
    },
    child: Container(
      height: 140.0,
      margin: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/imagens/Bar1.jpg", width: 110),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Bar do Zé',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Ótimo bar noturno, Muito animado',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Otima localização',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/imagens/Bar1.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Bar do Zé',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Ótimo bar noturno, Muito animado',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Otima localização',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            const SizedBox(height: 300, width: 500),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                child: const Text('Ver mais'),
              )
            ],
          )),
        ],
      ),
    ),
  );
}

Widget barDois(BuildContext context) {
  return InkWell(
    onTap: () {
      /*Navigator.push(context, MaterialPageRoute(builder: (context){
        return criaConta();
      }));*/
      Navigator.defaultRouteName;
    },
    child: Container(
      height: 140.0,
      margin: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/imagens/Bar2.jpg", width: 110),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hooligans',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- As opções de chopp, Cervejas artesanais e porções variados',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Otima localização',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/imagens/Bar2.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Hooligans',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- As opções de chopp, Cervejas artesanais e porções variados',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Otima localização',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            const SizedBox(height: 300, width: 500),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                child: const Text('Ver mais'),
              )
            ],
          )),
        ],
      ),
    ),
  );
}

Widget barTres(BuildContext context) {
  return InkWell(
    onTap: () {
      /*Navigator.push(context, MaterialPageRoute(builder: (context){
        return criaConta();
      }));*/
      Navigator.defaultRouteName;
    },
    child: Container(
      height: 140.0,
      margin: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/imagens/Bar3.jpg", width: 110, height: 150),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Porks',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Otimo lugar para ir com os amigos, chopp meio caro',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Otima localização',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/imagens/Bar3.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Porks',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Otimo lugar para ir com os amigos, chopp meio caro',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Otima localização',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            const SizedBox(height: 300, width: 500),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                child: const Text('Ver mais'),
              )
            ],
          )),
        ],
      ),
    ),
  );
}

Widget barQuatro(BuildContext context) {
  return InkWell(
    onTap: () {
      /*Navigator.push(context, MaterialPageRoute(builder: (context){
        return criaConta();
      }));*/
      Navigator.defaultRouteName;
    },
    child: Container(
      height: 140.0,
      margin: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/imagens/Bar4.jpg", width: 110, height: 150),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Mr. Hoppy',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- DRINKS DELICIOSOS, Som muito alto',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Otima localização',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => Dialog(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/imagens/Bar4.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Mr. Hoppy',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- DRINKS DELICIOSOS, Som muito alto',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Otima localização',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            const SizedBox(height: 300, width: 500),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                child: const Text('Ver mais'),
              )
            ],
          )),
        ],
      ),
    ),
  );
}
