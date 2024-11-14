import 'package:flutter/material.dart';
import 'package:appfirebase/services/firebase_services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: FutureBuilder(
        future: getUsuarios(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data?[index]['Nombre']),
                  subtitle: Text(snapshot.data?[index]['Email']),
                  leading: CircleAvatar(
                    child: Text(snapshot.data?[index]['Cuenta'].substring(0, 1)),
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
onPressed: (){
Navigator.pushNamed(context, '/add');
},
child: const Icon(Icons.add),
),
    );
  }
}