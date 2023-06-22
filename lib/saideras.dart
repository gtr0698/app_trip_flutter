// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:app_trip_flutter/criaConta.dart';
import 'package:app_trip_flutter/paginaInicial.dart';

class saideras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Melhores Lugares para sair com os Amigos'),
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
            saideraUm(context),
            saideraDois(context),
            saideraTres(context),
            saideraQuatro(context)
          ]),
        ),
      ),
    );
  }
}

Widget saideraUm(BuildContext context) {
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
          Image.asset("assets/imagens/Saidera1.jpg", width: 110),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Boulevard Boliche',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Um otimo lugar para uma partida de boliche com os amigos.',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Porçoes, torres de chop e coca',
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
                            Image.asset("assets/imagens/Saidera1.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Boulevard Boliche',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Um otimo lugar para uma partida de boliche com os amigos.',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Porçoes, torres de chop e coca',
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

Widget saideraDois(BuildContext context) {
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
          Image.asset("assets/imagens/Saidera2.jpg", width: 110),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Cine West Side',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Assistir um bom filme com a galera sempre é divertido',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Excelente pipoca doce e varios combos variados.',
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
                            Image.asset("assets/imagens/Saidera2.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Cine West Side',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Assistir um bom filme com a galera sempre é divertido',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Excelente pipoca doce e varios combos variados.',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            const SizedBox(height: 200, width: 400),
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

Widget saideraTres(BuildContext context) {
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
          Image.asset("assets/imagens/Lanche2.jpg", width: 110),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Chicago Burguer',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                '- Possibilidade de juntar as mesas em casos de grupo grande, bom atendimento',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                '- Promoção double recomendada e super em conta.',
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
                            Image.asset("assets/imagens/Lanche2.jpg",
                                width: 400),
                            Text(
                              'Chicago Burguer',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Possibilidade de juntar as mesas em casos de grupo grande, bom atendimento',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Promoção double recomendada e super em conta.',
                              style: TextStyle(
                                  fontSize: 15.0,
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

Widget saideraQuatro(BuildContext context) {
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
          Image.asset("assets/imagens/Bar4.jpg", width: 110),
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
                '- Um bom especaço para conversar e dar risada com a galera',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Chop de alta qualidade, opção de humburguer com um molho excelente.',
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
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Um bom especaço para conversar e dar risada com a galera',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Chop de alta qualidade, opção de humburguer com um molho excelente.',
                              style: TextStyle(
                                  fontSize: 15.0,
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
