import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'dart:io';

import 'package:app_trip_flutter/paginaInicial.dart';

class perfilUsuario extends StatelessWidget{
  const perfilUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfil do Usuario',
      home: HomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme(brightness: Brightness.dark, primary: Colors.deepOrange.shade500, onPrimary: Colors.white, 
        secondary: Colors.white, onSecondary: Colors.white, error: Colors.red, onError: Colors.red, 
        background: Colors.grey.shade800, onBackground: Colors.grey.shade800, surface: Colors.transparent, 
        onSurface: Colors.white)
      )
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil do usuário'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return paginaInicial();
                      })),
          ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(children: [
            const SizedBox(height: 35),
            fieldNome(),
            const SizedBox(height: 35),
            fieldEmail(),
            const SizedBox(height: 35),
            fieldSenha(),
          ]),
        ),
      ),
    );
  }
}

Widget fieldEmail(){
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: 
        InputDecoration(border: OutlineInputBorder(), labelText: 'E-mail')
  );
}

Widget fieldSenha(){
  return TextFormField(
    obscureText: true,
    decoration: 
      InputDecoration(border: OutlineInputBorder(), labelText: 'Senha'));
}

Widget fieldNome(){
  return TextFormField(
    decoration: 
      InputDecoration(border: OutlineInputBorder(), labelText: 'Nome'));
}

