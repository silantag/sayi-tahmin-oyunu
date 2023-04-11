import 'package:flutter/material.dart';
import 'package:flutter_application_1/tahmin.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anasayfa'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sayı Tahmin Oyunu",
                style: TextStyle(color: Colors.black54, fontSize: 36),
              ),
              Image.asset("images/tahmin.png"),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tahmin(),
                        ));
                  },
                  child: Text(
                    "OYUNA BAŞLA",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.purple),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
