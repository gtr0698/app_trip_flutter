
import 'package:flutter/material.dart';
import 'package:app_trip_flutter/criaConta.dart';
import 'package:app_trip_flutter/paginaInicial.dart';

class encontros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Melhores Lugares para encontros'),
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
              encontroUm(context),
              encontroDois(context),
              encontroTres(context),
              encontroQuatro(context)
            ]),
          ),
        ));
  }
}

Widget encontroUm(BuildContext context) {
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
          Image.asset("assets/imagens/Encontro1.jpg", width: 110),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Restaurante Picasso',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Otima vista, lugar com um baita clima romantico, sem duvidas o melhor restaurante da cidade',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Um pouco caro mas a comida é excelente',
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
                            Image.asset("assets/imagens/Encontro1.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Restaurante Picasso',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Otima vista, lugar com um baita clima romantico, sem duvidas o melhor restaurante da cidade',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Um pouco caro mas a comida é excelente',
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

Widget encontroDois(BuildContext context) {
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
          Image.asset("assets/imagens/Encontro2.jpg", width: 110),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Restaurante Paiollo',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Um lugar que transmite aquele clima romantico e chique, uma otima escolha para levar aquela pessoa especial.',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Comida incrivel e recomendo os vinhos.',
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
                            Image.asset("assets/imagens/Encontro2.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Restaurante Paiollo',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Um lugar que transmite aquele clima romantico e chique, uma otima escolha para levar aquela pessoa especial.',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Comida incrivel e recomendo os vinhos.',
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

Widget encontroTres(BuildContext context) {
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
          Image.asset("assets/imagens/Encontro3.jpg", width: 110),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Coffee O’Clock Cascavel',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Lugar tranquilo e perfeito para uma otima conversa a dois.',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Os doces junto de um cafezinho preparado na hora sao uma excente pedida.',
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
                            Image.asset("assets/imagens/Encontro3.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Coffee O’Clock Cascavel',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Lugar tranquilo e perfeito para uma otima conversa a dois.',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Os doces junto de um cafezinho preparado na hora sao uma excente pedida.',
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

Widget encontroQuatro(BuildContext context) {
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
          Image.asset("assets/imagens/Encontro4.jpg", width: 110),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Café com Arquitetura',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Um espaço muito relaxante e bonito, otimo para levar a pessoa amada(o) para um bom bate papo.',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Valores super em conta e um otimo atendimento.',
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
                            Image.asset("assets/imagens/Encontro4.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Café com Arquitetura',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Um espaço muito relaxante e bonito, otimo para levar a pessoa amada(o) para um bom bate papo.',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Valores super em conta e um otimo atendimento.',
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
