import 'package:cloud_firestore/cloud_firestore.dart';
//Creamos la variable db, de tipo FirebaseFirestore


Future<void> agregarUsuario(String nNombre, String nEmail, String nCuenta) async {
//CollectionReference collectionReferenceUsuarios = db.collection(&#39;usuarios&#39;);

await db.collection('usuarios').add({
'Nombre': nNombre,
'Email': nEmail,
'Cuenta': nCuenta,
});
}


FirebaseFirestore db = FirebaseFirestore.instance;

//Creamos un Future, que nos traerá los registros (Documentos), almacenados en firebase (Firestore Database)
Future<List> getUsuarios () async {
//Creamos la variable usuarios de tipo List, para recibir los registros
List usuarios = [];
//Creamos una variable de tipo CollectionReference, de nombre collectionReferenceUsuarios que apunta a la
//collection “usuarios”
CollectionReference collectionReferenceUsuarios = db.collection('usuarios');

QuerySnapshot queryUsuarios = await collectionReferenceUsuarios.get();

queryUsuarios.docs.forEach((documento) {
usuarios.add(documento.data());
});
return usuarios;
}