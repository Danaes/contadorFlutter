import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final TextStyle _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text( 'Número de clicks', style: _estiloTexto ),
            Text( '$_conteo', style: _estiloTexto )
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){
    return Row (
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton( child: Icon(Icons.add), onPressed: () { setState(() => _conteo++); /*Redibujar el nuevo valor*/}),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: () { setState(() => _conteo--);}),
        SizedBox(width: 5.0),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: () { setState(() => _conteo = 0);}),
      ],
    );
  }

}