

import 'package:cloud_firestore/cloud_firestore.dart';

class firestoreservice{

Stream<QuerySnapshot> Dlcs(){
  return FirebaseFirestore.instance.collection("Dlcs").snapshots();
  
}
Stream<QuerySnapshot> Storage(){
  return FirebaseFirestore.instance.collection("Storage").snapshots();
  
}

Stream<QuerySnapshot> Civilizaciones(){
  return FirebaseFirestore.instance.collection("Civilizaciones").snapshots();
  
}
Future<void> agregarcivilizacion(String Bonus_de_equipo, String Descripcion, String Nombre, String Nombre_del_dlc, 
String Tegnologia_Unica, String Unidad_Unica, String Url ){
return FirebaseFirestore.instance.collection("Civilizaciones").doc().set({
  "Bonus_de_equipo":Bonus_de_equipo,
  "Descripcion":Descripcion,
  "Nombre":Nombre,
  "Nombre_del_Dlc":Nombre_del_dlc,
  "Tegnologia_unica":Tegnologia_Unica,
  "Unidad_Unica": Unidad_Unica



});






}

Future<void> borrardlc(String docId){
  return FirebaseFirestore.instance.collection("Dlcs").doc(docId).delete();

}


}