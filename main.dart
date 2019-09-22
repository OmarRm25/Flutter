import 'package:flutter/material.dart';

void main() => runApp(CatalogoMoto());

class CatalogoMoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:
          Colors.blueGrey
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Catálogo de motos'),
        ),
       body:
        ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Image.asset('assets/bmw.JPG'),
                contentPadding: EdgeInsets.all(30.0),
                title: Text('BMW R-nine T'),
                subtitle: Text('Modelo clásico con motor boxer de 1200cc'),
                trailing: Icon(Icons.shopping_cart),
                isThreeLine: true,
              )
            ),
            Card(
                child: ListTile(
                  leading: Image.asset('assets/harley.JPG'),
                  contentPadding: EdgeInsets.all(30.0),
                  title: Text('Iron 883'),
                  subtitle: Text('Modelo custom con motor V-twin de 883cc'),
                  trailing: Icon(Icons.shopping_cart),
                  isThreeLine: true,
                )
            ),
            Card(
                child: ListTile(
                  leading: Image.asset('assets/indian.JPG'),
                  contentPadding: EdgeInsets.all(30.0),
                  title: Text('Indian Roadmaster'),
                  subtitle: Text('Modelo touring con motor V-twin de 1890cc'),
                  trailing: Icon(Icons.shopping_cart),
                  isThreeLine: true,
                )
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/indian1.JPG'),
                contentPadding: EdgeInsets.all(30.0),
                title: Text('Indian Chief'),
                subtitle: Text('Modelo cruiser con motor V-twin de 1811cc'),
                trailing: Icon(Icons.shopping_cart),
                isThreeLine: true,
    )
    ),
            Card(
                child: ListTile(
                  leading: Image.asset('assets/triumph.JPG'),
                  contentPadding: EdgeInsets.all(30.0),
                  title: Text('Triumph Bonneville'),
                  subtitle: Text('Modelo scrambler con motor de 900cc con 2 pistones en paralelo'),
                  trailing: Icon(Icons.shopping_cart),
                  isThreeLine: true,
                )
            ),
            Card(
                child: ListTile(
                  leading: Image.asset('assets/yamaha.JPG'),
                  contentPadding: EdgeInsets.all(30.0),
                  title: Text('Yamaha FZ-09'),
                  subtitle: Text('Modelo naked con motor en línea de 900cc'),
                  trailing: Icon(Icons.shopping_cart),
                  isThreeLine: true,
                )
            ),
          ],
        ),
      ),
    );
  }
}