import 'package:flutter/material.dart';

main() => runApp(Parking());

double firstHour = 0, splitHour = 0, total = 0;
int initHour = 0, initMin = 0, endHour = 0, endMin = 0;

class Parking extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Estado();
  }
}

class Estado extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title:Text('Que no te tranzen'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.monetization_on),
                      labelText: 'Costo 1ra hora',
                      hintText: 'Ingresa el costo de la primer hora',
                      helperText: 'sólo ingresa valores numéricos',
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(15)
                      ),
                    ),
                    onChanged: (cambio){
                      setState(() {
                        firstHour=double.parse(cambio);
                      });
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.monetization_on),
                      labelText: 'Costo fracción/hora',
                      hintText: 'Ingresa el costo de la fracción/hora',
                      helperText: 'sólo ingresa valores numéricos',
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(15)
                      ),
                    ),
                      onChanged: (cambio){
                      setState(() {
                        splitHour = double.parse(cambio);
                      });
                      },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.access_time),
                      labelText: 'Hora de entrada',
                      hintText: 'Ingresa la hora de entrada',
                      helperText: 'sólo ingresa valores numéricos',
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(15)
                      ),
                    ),
                      onChanged: (cambio){
                        setState(() {
                          List<String> splitted = cambio.split(':');
                          initHour = int.parse(splitted[0]);
                          initMin  = int.parse(splitted[1]);
                        });
                      },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.timer_off),
                      labelText: 'Hora de salida',
                      hintText: 'Ingresa la hora de salida',
                      helperText: 'sólo ingresa valores numéricos',
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(15)
                      ),
                    ),
                      onChanged: (cambio){
                        setState(() {
                          List<String> splitted = cambio.split(':');
                          endHour = int.parse(splitted[0]);
                          endMin  = int.parse(splitted[1]);
                        });
                      },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    child: Text('Calcular'),
                    onPressed: (){
                      print(initHour);
                      print(initMin);
                      print(endHour);
                      print(endMin);
                    setState(() {

                      int totalHora = -initHour+endHour;
                      int totalMin  = -initMin+endMin;

                      if (totalHora<1){
                        totalHora+=24;
                        totalHora.abs();
                      }

                      totalHora -= 1;
                      total = firstHour;
                      totalMin += totalHora*60;
                      double totalSplit = totalMin/15;
                      print(totalSplit);
                      int iter = totalSplit.floor();
                      print(totalSplit);

                      for(var i=0; i< iter; i++){
                        total+= splitHour;
                      }

                    });
                    },
                    color: Colors.blue
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("El total a pagar es: $total"),
                 )
              ],
            ),
          ),
        )

    );
  }

}