import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  final estiloSubtitulo = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _imagen(),
            _titulo(),
            _acciones(),
            _texto(),
            _texto(),
            _texto(),
            _texto(),
            _texto(),
            _texto(),
            _texto(),
          ],
        ),
      ),
    );
  }

  Widget _imagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
          'https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        ),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _titulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con un puente',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Un lago que se encuentra en Alemania',
                    style: estiloSubtitulo,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _acciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 25.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 12.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _texto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Et facilis deleniti quam saepe, perspiciatis porro. Animi suscipit nulla sequi sed assumenda accusantium quis ducimus autem omnis non, blanditiis vero incidunt? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Et facilis deleniti quam saepe, perspiciatis porro. Animi suscipit nulla sequi sed assumenda accusantium quis ducimus autem omnis non, blanditiis vero incidunt?',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
