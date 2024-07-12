// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'dart:ffi';

import 'package:age_of_empires_ll/pages/Civis.dart';
import 'package:age_of_empires_ll/pages/Inicio.dart';
import 'package:age_of_empires_ll/pages/utils.dart';
import 'package:age_of_empires_ll/services/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';







class Dlcs extends StatefulWidget {
  const Dlcs({super.key});


 

  @override
  State<Dlcs> createState() => _DlcsState();
  
}

class _DlcsState extends State<Dlcs> {
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar: AppBar( backgroundColor: Color(0xFF4B4A3A)),
      backgroundColor: Color(0xFFEDAF72),
      floatingActionButton:OutlinedButton(
                  onPressed:(){ Navigator.push(this.context, MaterialPageRoute(builder: (context)=>Civis())); }

                  ,child: const Text("+"),
                
                  iconAlignment: IconAlignment.start),
                  
      body: Padding(
        



        
        padding: EdgeInsets.all(0),
        child:StreamBuilder(
          
    stream: firestoreservice().Dlcs(),
    
   
    builder: ( context, AsyncSnapshot<QuerySnapshot> snapshot) {
      
      
      if(!snapshot.hasData || snapshot.connectionState==ConnectionState.waiting ){
        print("cargando");
        return Center(child: CircularProgressIndicator());
      }else{
        print("cargo");
        
        return ListView.separated(
           
          separatorBuilder: (context,index)=> Divider(), 
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (context, index){
            var Dlcss=snapshot.data!.docs[index];
            print(Dlcss["Nombre_del_dlc"]);
           
            return Container(
              child:( Column(children: [
                
                Container(child: OutlinedButton(
                  onPressed:(){
                    firestoreservice().borrardlc(Dlcss.id); 
                  }

                  ,child: const Text("Eliminar"),
                  
                  iconAlignment: IconAlignment.end,),
                  height: 30,
                  width: 300,
                  
                  ),

                Text("${Dlcss["Nombre_del_dlc"]}",),
                Container(child:Image.network("${Dlcss["Url"]}", fit: BoxFit.cover),width: 350,height: 230),
                Container(width: 30,height: 30,),
                Container(child:Text("${Dlcss["Descripcion"]}",style:TextStyle(fontFamily: "Cinzel Decorative"),textAlign: TextAlign.justify,),width: 350,height: 300, ),
                





                
                Container(width: 30,height: 30,) 
                ])),  
                
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF4B4A3A))
                ),
              
              )
              


            ;

          }
          );

      }
      
    },
  ),) 
        
      ,








        );

        
    
  }



}