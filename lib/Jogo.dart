import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("iJokenPo",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Padding(
            padding: EdgeInsets.only( top: 32, bottom: 16),
            child: Text("Escolha do app",
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight:  FontWeight.bold
              ),
            ),
          ),


              Image.asset("imagens/padrao.png"),


          Padding(
            padding: EdgeInsets.only( top: 32, bottom: 16),
            child: Text("Escolha duma opção abaixo",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight:  FontWeight.bold
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("imagens/pedra.png", height: 95,),
              Image.asset("imagens/papel.png", height: 95,),
              Image.asset("imagens/tesoura.png", height: 95,),
              

            ],
          ),
        ],

      ),
    );
  }
}



