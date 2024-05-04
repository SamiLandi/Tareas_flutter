import 'package:flutter/material.dart';

class Tarjetas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const List<String> nombres = ['Tarjeta_1', 'Tarjeta_2', 'Tarjeta_3', 'Tarjeta 4'];
    var ancho = MediaQuery.of(context).size.width;
    var alto = MediaQuery.of(context).size.height;
    TextStyle styleTitles = const TextStyle(
        color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Tarjetas",
          style: TextStyle(color: Colors.white, fontSize: 18),
        )),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.notifications,
              color: Colors.grey[400],
              size: 25,
            ),
          )
        ],
        leading: Icon(
          Icons.menu,
          color: Colors.grey[400],
          size: 35.0,
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: ancho,
                  height: 150,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.card_giftcard,
                              color: Colors.white,
                            ),
                            Text(
                              "\$9999 99",
                              style: styleTitles,
                              textAlign: TextAlign.left,
                            ),
                            const Row(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "SI=H-00054157624",
                                      style: TextStyle(color: Colors.black),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      width: 50,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Text(
                              "tarjeta 50",
                              style: TextStyle(color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: ancho,
                  height: 10,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Text(
                "",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(4, (index) {
                var num = index;
                var p = nombres[
                    index]; // Eliminamos 'const' para permitir que 'p' cambie en cada iteración
                return Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 5), // Eliminamos 'const'
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: ancho * 0.4,
                  height: 100,
                  child: Center(
                    child: Text(
                      p,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
