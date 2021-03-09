import 'dart:math';

import 'package:flutter/material.dart';

class JokenPage extends StatefulWidget {
  @override
  _JokenPageState createState() {
    return _JokenPageState();
  }
}

class _JokenPageState extends State<JokenPage> {
  String image = 'assets/images/pedra-papel-tesoura.png';
  String pc = 'assets/images/pedra-papel-tesoura.png';
  String resultado = 'Escolha uma Opção';
  void pedra() {
    String image = 'assets/images/pedra.png';
    int numero;
    var r = Random();
    numero = r.nextInt(3);
    if (numero == 1) {
      resultado = 'Empate';
      pc = 'assets/images/pedra.png';
    } else if (numero == 2) {
      resultado = 'Derrota';
      pc = 'assets/images/papel.png';
    } else {
      resultado = 'Vitrória';
      pc = 'assets/images/tesoura.png';
    }
    setState(() {
      this.resultado = resultado;
      this.image = image;
      this.pc = pc;
    });
  }

  void papel() {
    String image = 'assets/images/papel.png';
    int numero;
    var r = Random();
    numero = r.nextInt(3);
    if (numero == 1) {
      resultado = 'Vitória';
      pc = 'assets/images/pedra.png';
    } else if (numero == 2) {
      resultado = 'Empate';
      pc = 'assets/images/papel.png';
    } else {
      resultado = 'Derrota';
      pc = 'assets/images/tesoura.png';
    }
    setState(() {
      this.resultado = resultado;
      this.image = image;
      this.pc = pc;
    });
  }

  void tesoura() {
    String image = 'assets/images/tesoura.png';
    int numero;
    var r = Random();
    numero = r.nextInt(3);
    if (numero == 1) {
      resultado = 'Derrota';
      pc = 'assets/images/pedra.png';
    } else if (numero == 2) {
      resultado = 'Vitória';
      pc = 'assets/images/papel.png';
    } else {
      resultado = 'Empate';
      pc = 'assets/images/tesoura.png';
    }
    setState(() {
      this.resultado = resultado;
      this.image = image;
      this.pc = pc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('JOKENPÔ'),
        centerTitle: true,
        elevation: double.infinity,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    RaisedButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        'Pedra',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: pedra,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RaisedButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        'Papel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: papel,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RaisedButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        'Tesoura',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      onPressed: tesoura,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              )),
          Flexible(
              child: Text(
            "Resultado: ${resultado}",
            style: TextStyle(fontSize: 30),
          )),
          SizedBox(
            height: 30,
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Image.asset(image),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
                child: Column(
              children: [
                Text(
                  'X',
                  style: TextStyle(color: Colors.red, fontSize: 50),
                ),
                Text(
                  'Computador:',
                  style: TextStyle(fontSize: 30),
                )
              ],
            )),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: Image.asset(pc),
            ),
          ),
        ],
      ),
    );
  }
}
