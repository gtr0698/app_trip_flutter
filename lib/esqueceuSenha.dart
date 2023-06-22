// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class esqueceuSenha extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Recuperar sua senha'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: mensagem(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
          onPressed: () {},
          child: Icon(Icons.email),
        ),
      ),
      theme: ThemeData(
        colorScheme: ColorScheme(brightness: Brightness.dark, primary: Colors.deepOrange.shade500, onPrimary: Colors.white, 
        secondary: Colors.white, onSecondary: Colors.white, error: Colors.red, onError: Colors.red, 
        background: Colors.grey.shade800, onBackground: Colors.grey.shade800, surface: Colors.transparent, 
        onSurface: Colors.white)
      )
    );
  }
}

class mensagem extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60, left: 40, right: 40),
      child: ListView(
        children: [
          sizedBox(),
          const SizedBox(height: 15), 
          textoMaior(), 
          const SizedBox(height: 15),
          textoMenor(), 
          const SizedBox(height: 15),
          fieldEmail(), 
          const SizedBox(height: 25),
          bottom()
          ],
      ),
    );
  }
}

Widget textoMaior(){
  return Text(
    'Esqueceu sua senha',
    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
    textAlign: TextAlign.center,
  );
}

Widget textoMenor(){
  return Text(
    'Informe seu e-mail associado a sua conta para recuperar sua senha',
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    textAlign: TextAlign.center,
  );
}

Widget fieldEmail(){
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: 
        InputDecoration(border: OutlineInputBorder(), labelText: 'E-mail')
  );
}

Widget sizedBox(){
  return SizedBox(
    width: 200,
    height: 200,
    child: Image.network(
      "https://thumbs.dreamstime.com/b/icono-de-candado-abierto-plateado-aislado-en-fondo-negro-signo-bloqueo-concepto-ciberseguridad-protecci%C3%B3n-datos-digitales-203386497.jpg"
      ),
  );
}

Widget bottom(){
  return ElevatedButton(    
    style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange.shade500,
            ),
            child: Text('Enviar'),            
            onPressed: () {
              Navigator.defaultRouteName;
            },
  );
}
