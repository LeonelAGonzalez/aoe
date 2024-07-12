import 'package:age_of_empires_ll/pages/Dlcs.dart';
import 'package:age_of_empires_ll/pages/utils.dart';
import 'package:flutter/material.dart';
import 'package:age_of_empires_ll/pages/utils.dart';


class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor:Color(0xFF4B4A3A),

      ),
       backgroundColor: Color(0xFFEDAF72),
      body:
      
      Column(
        
        
        
        children: [Row(
        
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            
                  
            SizedBox(height: 100),
            
            
            
            hacerboton(destino: Dlcs(), icono: Icons.home, contexto: this.context)]
        )
        
        ],
        

      )
    



    );
   
  }
}