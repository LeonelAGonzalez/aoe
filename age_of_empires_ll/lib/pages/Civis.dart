import 'package:age_of_empires_ll/pages/Dlcs.dart';
import 'package:age_of_empires_ll/pages/agregar.dart';
import 'package:age_of_empires_ll/pages/utils.dart';
import 'package:age_of_empires_ll/services/firestore_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:age_of_empires_ll/pages/utils.dart';


class Civis extends StatefulWidget {
  const Civis({super.key});

  @override
  State<Civis> createState() => _CivisState();
}

class _CivisState extends State<Civis> {
  @override
  Widget build(BuildContext context) {
    return (Padding(padding: EdgeInsets.all(0),

child: Scaffold(
      floatingActionButton: OutlinedButton(
                  onPressed:(){ Navigator.push(this.context, MaterialPageRoute(builder: (context)=>Agregar())); }

                  ,child: const Text("+"),
                
                  iconAlignment: IconAlignment.start),
      appBar: AppBar( backgroundColor: Color(0xFF4B4A3A)),
      backgroundColor: Color(0xFFEDAF72),
      body: Padding(

        
        padding: EdgeInsets.all(0),
        child:StreamBuilder(
          
    stream: firestoreservice().Civilizaciones(),
    
   
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
            var Civi=snapshot.data!.docs[index];
            print(Civi["Nombre"]);
           
            return SingleChildScrollView(
              child:Container( child: Column(children: [
                 Text("${Civi["Nombre"]}"),
      SizedBox(width: 20, height: 20,),
      Text("${Civi["Descripcion"]}"),
      SizedBox(width: 20, height: 20,),
      Text("${Civi["Tegnologia_Unica"]}"),
      SizedBox(width: 20, height: 20,),
      Text("${Civi["Bonus_de_equipo"]}"),
      SizedBox(width: 20, height: 20,),
      Text("${Civi["Unidad_Unica"]}"),
      SizedBox(width: 20, height: 20,),
      Text("${Civi["Nombre del Dlc"]}"),
      SizedBox(width: 20, height: 20,),




             





                Container(
               child:  Container(width: 30,height: 30,) 
                )]), decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF4B4A3A))
                )) 
                
                ,
              
              )
              


            ;

          }
          );

      }
      
    },
  ),) 
        
      ,








        )));

        
    
  }

























}