import 'package:flutter/material.dart';

import 'package:app_trip_flutter/criaConta.dart';
import 'package:app_trip_flutter/esqueceuSenha.dart';
import 'package:app_trip_flutter/paginaInicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: _Login(),
      ),
      theme: ThemeData(
        colorScheme: ColorScheme(brightness: Brightness.dark, primary: Colors.deepOrange.shade500, onPrimary: Colors.white, 
        secondary: Colors.white, onSecondary: Colors.white, error: Colors.red, onError: Colors.red, 
        background: Colors.grey.shade800, onBackground: Colors.grey.shade800, surface: Colors.transparent, 
        onSurface: Colors.transparent)
      )
    );
  }
}

class _Login extends StatelessWidget {
  String email = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Card(
                    child: Container(
                    padding: EdgeInsets.all(32.0),
                      child: Column(
                    children: <Widget>[
                      Image.network(
                      "https://mir-s3-cdn-cf.behance.net/projects/404/f86100116378471.Y3JvcCwxMzc2LDEwNzcsMTU2LDA.png"),
                      Divider(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (text) {
                email = text;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-mail',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10,10,10,0),
            child: TextField(
                            onChanged: (text) {
                pass = text;
                
              },
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ),
            ),
          ),
          TextButton(
            onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return esqueceuSenha();
                  }
                  )
                  );
                },
            child: const Text('Esqueci a senha',),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  if(email == '' && pass == '')
                  // ignore: curly_braces_in_flow_control_structures
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return paginaInicial();
                  }
                  )
                  );
                },
              ),
            ),
            Row(
              // ignore: sort_child_properties_last
              children: <Widget>[
                const Text('Não possui conta?'),
                TextButton(
                  child: const Text(
                    'Cadastre-se aqui',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return criaConta();
                    }
                    )
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
        ],
      ),
    );
  }
}
