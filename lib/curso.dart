import 'package:curso_basico_flutter/background.dart';
import 'package:curso_basico_flutter/dashboard.dart';
import 'package:curso_basico_flutter/pagina_con_estado.dart';
import 'package:curso_basico_flutter/tarjetas.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
 void _onPressedDashboard(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const Dashboard();
      },
    ));
  }

  void _onPressedBackground(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const BackgroundPage();
      },
    ));
  }

  void _onPressedEstados(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const PaginaConEstado();
      },
    ));
  }

  void _onPressedTarjetas(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const TarjetasPage();
      },
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  _onPressedDashboard(context);
                },
                child: Container(
                  width: 250.0,
                  margin: const EdgeInsets.only(bottom: 50.0),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: const Center(
                    child: Text(
                      "Hola mundo",
                      style: TextStyle(color: Colors.white, fontSize: 28.0),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  "En este curso, estamos aprendiendo Flutter, con los estudiantes de la carrera de software, y estudiantes apacionados con la programación y el desarrollo de aplicaciones",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          _onPressedDashboard(context);
                        },
                        color: Colors.amber,
                        child: const Text("Dashboard"),
                      ),
                      const SizedBox(height: 10.0),
                      MaterialButton(
                        onPressed: () {
                          _onPressedEstados(context);
                        },
                        color: Colors.amber,
                        child: const Text("Estados"),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10.0),
                  Column(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          _onPressedBackground(context);
                        },
                        color: Colors.amber,
                        child: const Text("Background"),
                      ),
                      const SizedBox(height: 10.0),
                      MaterialButton(
                        onPressed: () {
                          _onPressedTarjetas(context);
                        },
                        color: Colors.amber,
                        child: const Text("Tarjetas"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ), 
    );
  }
}