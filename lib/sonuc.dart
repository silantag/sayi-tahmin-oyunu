import 'package:flutter/material.dart';
import 'package:flutter_application_1/game.dart';

class Sonuc extends StatefulWidget {
  Sonuc({super.key, required this.sonuc});
  bool sonuc;
  @override
  State<Sonuc> createState() => _SonucState();
}

class _SonucState extends State<Sonuc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.sonuc
                ? Image.asset("images/happy.png")
                : Image.asset("images/sad.png"),
            Text(
              widget.sonuc ? "Kazandınız" : "Kaybettiniz",
              style: const TextStyle(color: Colors.black54, fontSize: 36),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "TEKRAR DENE",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
