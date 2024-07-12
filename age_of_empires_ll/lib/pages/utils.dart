
// ignore_for_file: sort_child_properties_last, non_constant_identifier_names, prefer_const_constructors

import 'package:age_of_empires_ll/pages/Dlcs.dart';
import 'package:age_of_empires_ll/services/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}








ElevatedButton hacerboton({required Widget destino,required IconData icono, required BuildContext contexto}) {
  
  return ElevatedButton(onPressed: ()
  {Navigator.push(contexto, MaterialPageRoute(builder: (contexto)=>destino));}, 
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.amber,
    
  ),
  //child:Text("")
  child: Icon(icono, color: Colors.black87),
  );
}







Container creador_de_Dlcs  ({nombre}){
    StreamBuilder(
    stream: firestoreservice().Dlcs(),
   
    builder: ( context, AsyncSnapshot<QuerySnapshot> snapshot) {
      if(!snapshot.hasData || snapshot.connectionState==ConnectionState.waiting ){
        return Center(child: CircularProgressIndicator());
      }else{
        return ListView.separated(
           
          separatorBuilder: (context,index)=> Divider(), 
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (conntex, index){
            var Dlcs=snapshot.data!.docs[index];
           
            return Container(
              child: Text("${Dlcs["Nombre_del_dlc"]})"),
              


            );

          }
          );

      }
      
    },
  );
   return Container(
    


   );
}





Card CardExample (String nada){
  bool mostrar =false;
  

    return 
     Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Text('A card that can be tapped'),
          ),
        ),
      );
}