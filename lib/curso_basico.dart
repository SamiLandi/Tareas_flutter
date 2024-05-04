import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CursoBasicoPage extends StatefulWidget {
  const CursoBasicoPage({Key? key}) : super(key: key);

  @override
  State<CursoBasicoPage> createState() => _CursoBasicoPageState();
}

class _CursoBasicoPageState extends State<CursoBasicoPage> {
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();
    fetchData(); 
  }

  Future<void> fetchData() async {
    final response =
        await http.get(Uri.parse("https://www.yanditv.com/api/curso_basico"));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          final item = data[index];
          final nombre = item['nombre'];
          final cedula = item['cedula'];
          final correo = item['correo'];
          final celular = item['celular'];
          final carrera = item['carrera'];
          final initials = nombre.substring(0, 2).toUpperCase();
          final isSoftware = carrera == "SOFTWARE";

          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isSoftware ? Colors.red : Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.white ,child: Text(initials),),
                    const SizedBox(width: 10,),
                  ],
                ),
                Text(
                  '  $nombre',
                  style: const TextStyle(fontSize: 20,color: Colors.white),
                ),
                Text('  $cedula',style: const TextStyle(fontSize: 15,color: Colors.white),),
                const SizedBox(height: 5,),
                Text('  $correo',style: const TextStyle(fontSize: 15,color: Colors.white),),
                const SizedBox(height: 5,),
                Text('  $celular',style: const TextStyle(fontSize: 15,color: Colors.white),),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(isSoftware ? '$carrera' : "EXTERNO",style: const TextStyle(fontSize: 15,color: Colors.white),),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
