import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final bd=Firestore.instance;

main() => runApp(Chat());

class Chat extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Estado();
  }

}

class Estado extends State{
  final message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text('Black hat chat'),
        ),
        body:
           StreamBuilder(
             stream: Firestore.instance.collection('chat').snapshots(),
             builder: (context,snapshot){
               if(!snapshot.hasData)
                 return Text('cargando, por favor espera');
               return ListView(
                 children: <Widget>[
                 Card(child: ListTile(title: Text(snapshot.data.documents[6]['mensaje']))),
                 Card(child: ListTile(title: Text(snapshot.data.documents[5]['mensaje']))),
                 Card(child: ListTile(title: Text(snapshot.data.documents[4]['mensaje']))),
                 Card(child: ListTile(title: Text(snapshot.data.documents[3]['mensaje']))),
                 Card(child: ListTile(title: Text(snapshot.data.documents[2]['mensaje']))),
                 Card(child: ListTile(title: Text(snapshot.data.documents[1]['mensaje']))),
                 Card(child: ListTile(title: Text(snapshot.data.documents[0]['mensaje']))),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: TextField(
                       decoration: InputDecoration(
                         labelText: 'Escribe un mensaje',
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(16)
                         )
                       ),
                       controller: message,
                     ),
                   )
                 ],
               );

             },
           ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            insert(message.text);
          },
          child: Icon(Icons.message),
        ),
      ),
    );
  }

}

void insert (String message)async{
  await bd.collection("chat").
  add({'mensaje':message});
}