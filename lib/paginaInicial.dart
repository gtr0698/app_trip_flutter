// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:app_trip_flutter/clubes.dart';
import 'package:app_trip_flutter/bares.dart';
import 'package:app_trip_flutter/criaConta.dart';
import 'package:app_trip_flutter/encontros.dart';
import 'package:app_trip_flutter/lanches.dart';
import 'package:app_trip_flutter/perfilUsuario.dart';
import 'package:app_trip_flutter/saideras.dart';

class paginaInicial extends StatelessWidget{
  
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Perfil"),
                  subtitle: Text("Perfil do usuário"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return perfilUsuario();
                      }));
                  }),
            ],
          ),
        ),
        appBar: AppBar(
            title: const Text('Pagina Inicial')),
        body: principalPage(),
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

class principalPage extends StatelessWidget{

@override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 15),
            primeiraLinha(context),
            const SizedBox(height: 15),
            segundaLinha(context),
            const SizedBox(height: 15),
            terceiraLinha(context),
            const SizedBox(height: 15),
            quartaLinha(context),
            const SizedBox(height: 15),
            quintaLinha(context),
          ]),
          ),
        ),
      ),
    );
  }

}

  Widget primeiraLinha(BuildContext context) {
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return lanches();
      }));
    },
    child: Container(
      height: 80.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.all( Radius.circular(10.0)),
          gradient: LinearGradient(colors: const [Colors.redAccent, Colors.deepOrangeAccent],
              begin: Alignment.centerLeft, end: Alignment.centerRight, tileMode: TileMode.clamp)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: CircleAvatar(radius: 35.0, backgroundImage: NetworkImage('https://img.lovepik.com/free-png/20211130/lovepik-picnic-tomato-beef-cheese-hamburger-snack-png-image_401214727_wh1200.png'),)
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Melhores Lanches', style: TextStyle(fontSize: 20.0, color: Colors.white70, fontWeight: FontWeight.bold),),
              SizedBox(height: 8.0,),
            ],)),
        ],
      ),
    ),
  );
}

Widget segundaLinha(BuildContext context) {
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return bares();
      })
      );
    },
    child: Container(
      height: 80.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.all( Radius.circular(10.0)),
          gradient: LinearGradient(colors: const [Colors.greenAccent, Colors.indigoAccent],
              begin: Alignment.centerLeft, end: Alignment.centerRight, tileMode: TileMode.clamp)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: CircleAvatar(radius: 35.0, backgroundImage: NetworkImage('https://png.pngtree.com/element_origin_min_pic/17/01/09/2d1de1e0ac868746c0d874af4e79ecac.jpg'),)
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Melhores Bares', style: TextStyle(fontSize: 20.0, color: Colors.white70, fontWeight: FontWeight.bold),),
              SizedBox(height: 8.0,),
            ],
            )),
        ],
      ),
    ),
  );
}

Widget terceiraLinha(BuildContext context) {
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return clubes();
      })
      );
    },
    child: Container(
      height: 80.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.all( Radius.circular(10.0)),
          gradient: LinearGradient(colors: const [Colors.deepPurple, Colors.pinkAccent],
              begin: Alignment.centerLeft, end: Alignment.centerRight, tileMode: TileMode.clamp)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: CircleAvatar(radius: 35.0, backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1603172494/55_400x400.png'),)
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Melhores Clubes', style: TextStyle(fontSize: 20.0, color: Colors.white70, fontWeight: FontWeight.bold),),
              SizedBox(height: 8.0,),
            ],)),
        ],
      ),
    ),
  );
}

Widget quartaLinha(BuildContext context) {
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return saideras();
      })
      );
    },
    child: Container(
      height: 80.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.all( Radius.circular(10.0)),
          gradient: LinearGradient(colors: const [Colors.blueGrey, Colors.grey],
              begin: Alignment.centerLeft, end: Alignment.centerRight, tileMode: TileMode.clamp)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: CircleAvatar(radius: 35.0, backgroundImage: NetworkImage('https://d1kq2dqeox7x40.cloudfront.net/images/news_uploads/legacy/0/148460.jpg'),)
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Sair com os amigos', style: TextStyle(fontSize: 20.0, color: Colors.white70, fontWeight: FontWeight.bold),),
              SizedBox(height: 8.0,),
            ],)),
        ],
      ),
    ),
  );
}

Widget quintaLinha(BuildContext context) {
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return encontros();
      })
      );
    },
    child: Container(
      height: 80.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.all( Radius.circular(10.0)),
          gradient: LinearGradient(colors: const [Colors.redAccent, Colors.deepPurpleAccent],
              begin: Alignment.centerLeft, end: Alignment.centerRight, tileMode: TileMode.clamp)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: CircleAvatar(radius: 35.0, backgroundImage: NetworkImage('https://png.pngtree.com/png-vector/20191022/ourlarge/pngtree-romantic-dinner-for-a-young-married-couple-at-home-vector-isolated-png-image_1841868.jpg'),)
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Encontro a dois', style: TextStyle(fontSize: 20.0, color: Colors.white70, fontWeight: FontWeight.bold),),
              SizedBox(height: 8.0,),
            ],)),
        ],
      ),
    ),
  );
}
