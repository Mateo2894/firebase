import 'package:appfirebase/services/firebase_services.dart';
import 'package:flutter/material.dart';

class AddUsuario extends StatefulWidget {
const AddUsuario({super.key});

@override

State<AddUsuario> createState() => _AddUsuarioState();
}

class _AddUsuarioState extends State<AddUsuario> {
TextEditingController nombreController = TextEditingController(text: '');
TextEditingController emailController = TextEditingController(text: '');
TextEditingController nocuentaController = TextEditingController(text: '');

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Agregar usuario'),
),
body: Padding(
padding: const EdgeInsets.all(15.0),
child: Column(
children: <Widget>[
const SizedBox(height: 10),
TextField(
controller: nombreController,
decoration: const InputDecoration(
border: OutlineInputBorder(),
labelText: 'Nombre',
),
),
const SizedBox(height: 10),
TextField(
controller: emailController,
decoration: const InputDecoration(
border: OutlineInputBorder(),
labelText: 'Email',

),
),
const SizedBox(height: 10),
TextField(
controller: nocuentaController,
decoration: const InputDecoration(
border: OutlineInputBorder(),
labelText: 'No. cuenta',
),
),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () {
//print(&#39;Nombre: &#39; + nombreController.text);
agregarUsuario(
nombreController.text,
emailController.text,
nocuentaController.text);

},
child: const Text(';Guardar'),
),
],
),
),
);
}
}