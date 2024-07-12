import 'package:age_of_empires_ll/services/firestore_service.dart';
import 'package:flutter/material.dart';

class Agregar extends StatefulWidget {
  const Agregar({super.key});

  @override
  State<Agregar> createState() => _AgregarState();
}

class _AgregarState extends State<Agregar> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _bonus = TextEditingController();
  final TextEditingController _descripcion = TextEditingController();
  final TextEditingController _nombre = TextEditingController();
  final TextEditingController _nombredlc = TextEditingController();
  final TextEditingController _tegnologia = TextEditingController();
  final TextEditingController _unidad = TextEditingController();
   final TextEditingController _url = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      
      appBar: AppBar( backgroundColor: Color(0xFF4B4A3A)),
      backgroundColor: Color(0xFFEDAF72),
  
                  
      body: SingleChildScrollView(
        



        
        padding: EdgeInsets.all(0),
        
        child: Container(child: Column(children: [
          SizedBox(height: 20,),
          Text("Bonus de Equipo", ),
          TextField(controller:_bonus ,),
          SizedBox(height: 20,),
          Text("Descripcion"),
           TextField(controller: _descripcion,),
          SizedBox(height: 20,),
          Text("Nombre"),
           TextField(controller: _nombre,),
          SizedBox(height: 20,),
          Text("Nombre del Dlc"),
           TextField(controller: _nombredlc,),
          SizedBox(height: 20,),
          Text("Tegnologia unica"),
           TextField(controller: _tegnologia,),
          SizedBox(height: 20,),
          Text("Unidad Unica"),
           TextField(controller: _unidad,),
          SizedBox(height: 20,),
           Text("Url"),
           TextField(controller: _url,),
        FloatingActionButton(onPressed: (){


          if(_formKey.currentState!.validate()){
            
            firestoreservice().agregarcivilizacion(
              _bonus.text.trim(), _descripcion.text.trim(), _nombre.text.trim(), 
              _nombredlc.text.trim(), _tegnologia.text.trim(), _unidad.text.trim(),_url.text.trim()
              

       
          
      
        
        





  );}})])))
        
      








        );
  }
void limpiar() {
    // Limpieza de los TextEditingControllers
  _bonus.dispose();
  _descripcion.dispose();
  _nombre.dispose();
  _nombredlc.dispose();
  _tegnologia.dispose();
  _unidad.dispose();
  _url.dispose();
    super.dispose();
  }



  
}