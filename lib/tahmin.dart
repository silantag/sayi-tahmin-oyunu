import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/sonuc.dart';

class Tahmin extends StatefulWidget {
  const Tahmin({Key? key}) : super(key: key);

  @override
  _TahminState createState() => _TahminState();
}

class _TahminState extends State<Tahmin> {
  @override
  var tftahmin = TextEditingController();
  int rastgelesayi = 0;
  int kalanhak = 5;
  String yonlendirme = "";
  @override
  void initState() {
    super.initState();
    rastgelesayi = Random().nextInt(101);
    print("Rastgele sayi: $rastgelesayi");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tahmin Et'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Kalan Hak: $kalanhak",
              style: const TextStyle(color: Colors.pink, fontSize: 30),
            ),
            Text("Yardım $yonlendirme",
                style: const TextStyle(color: Colors.black54, fontSize: 24)),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: tftahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    labelText: "Tahmin",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    kalanhak = kalanhak - 1;
                  });

                  int tahmin = int.parse(tftahmin.text);
                  if (tahmin == rastgelesayi) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sonuc(sonuc: true),
                        ));
                    return;
                  }
                  if (tahmin > rastgelesayi) {
                    setState(() {
                      yonlendirme = "Tahmini Azalt";
                    });
                  }
                  if (tahmin < rastgelesayi) {
                    yonlendirme = "Tahmini Arttır";
                  }
                  if (kalanhak == 0) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sonuc(sonuc: false),
                        ));
                  }
                  tftahmin.text;
                },
                child: Text(
                  "TAHMİN ET",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              ),
            ),
            //Text(rastgelesayi.toString())
          ],
        ),
      ),
    );
  }
}
