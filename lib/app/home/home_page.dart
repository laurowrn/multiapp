import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Infos'),
      ),
      body: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Para acessar as funções do app, clique no ',
            style: TextStyle(color: Colors.black, fontSize: 30),
            children: [
              TextSpan(
                text: 'drawer ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.deepPurpleAccent),
              ),
              TextSpan(text: 'que se encontra no canto superior esquerdo.'),
            ],
          ),
        ),
      ),
    );
  }
}
