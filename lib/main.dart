import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        // Container for our layout
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row for green and orange boxes
            Wrap(
              children: [
                buatKotak(
                  Colors.greenAccent,
                  100,
                ),
                buatKotak(Colors.orangeAccent, 70),
                buatKotak(Colors.greenAccent, 50),
                buatKotak(Colors.orangeAccent, 90),
              ],
            ),
            // Row for red and blue boxes
            Wrap(
              children: [
                buatKotak(Colors.red[300]!, 110),
                buatKotak(Colors.blue[300]!, 30),
              ],
            ),
            // Labels for the colors
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buatLabel("Niam Abdallah Nawaf"),
                buatLabel("STI202102557"),
              ],
            ),
          ],
        ),
      ),
    ),
  ));
}

Widget buatKotak(Color warna, double ukuran) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        color: warna,
      ),
      height: ukuran,
      width: ukuran,
      margin: EdgeInsets.all(10),
    ),
  );
}

Widget buatLabel(String nama) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Text(nama, style: TextStyle(fontSize: 16)),
  );
}
