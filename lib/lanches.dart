
import 'package:flutter/material.dart';
import 'package:app_trip_flutter/criaConta.dart';
import 'package:app_trip_flutter/paginaInicial.dart';

class lanches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Melhores Lanches'),
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
            lancheUm(context),
            lancheDois(context),
            lancheTres(context),
            lancheQuatro(context)
          ]),
        ),
      ),
    );
  }
}

Widget lancheUm(BuildContext context) {
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
          Image.asset("assets/imagens/Lanche1.jpg", width: 110),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Brasa Burguer',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Lanche delicioso, local aconchegante, otimo atendimento, muito bom para ir com os amigos.',
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
                            Image.asset("assets/imagens/Lanche1.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Brasa Burguer',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Lanche delicioso, local aconchegante, otimo atendimento, muito bom para ir com os amigos.',
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

Widget lancheDois(BuildContext context) {
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
                height: 8.0,
              ),
              Text(
                '- Lanche delicioso, local aconchegante, otimo atendimento, muito bom para ir com os amigos.',
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
                            Image.asset("assets/imagens/Lanche2.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Chicago Burguer',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Lanche delicioso, local aconchegante, otimo atendimento, muito bom para ir com os amigos.',
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

Widget lancheTres(BuildContext context) {
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
          Image.asset("assets/imagens/Lanche3.jpg", width: 110),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Harlem Hamburgueria',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Lanche delicioso, local aconchegante, otimo atendimento, muito bom para ir com os amigos.',
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
                            Image.asset("assets/imagens/Lanche3.jpg",
                                width: 500),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Harlem Hamburgueria',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Lanche delicioso, local aconchegante, otimo atendimento, muito bom para ir com os amigos.',
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

Widget lancheQuatro(BuildContext context) {
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
          Image.asset("assets/imagens/Lanche4.jpg", width: 110),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Dog King',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '- Muito recomendado para quem gosta de um bom cachorro quente.',
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
                            Image.asset("assets/imagens/Lanche4.jpg",
                                width: 400),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Dog King',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '- Muito recomendado para quem gosta de um bom cachorro quente.',
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
