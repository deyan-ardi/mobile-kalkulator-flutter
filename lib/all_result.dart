import 'package:flutter/material.dart';
import 'select_figure.dart';

class CountResult extends StatelessWidget {
  CountResult({
    @required this.value_1,
    @required this.value_2,
    @required this.tipe,
  });
  final double value_1;
  final double value_2;
  final int tipe;

  @override
  Widget build(BuildContext context) {
    double resultHasil = 0;
    String dCount;
    if (tipe == 1) {
      dCount = "LUAS PERSEGI PANJANG";
      resultHasil = value_1 * value_2;
    } else if (tipe == 2) {
      dCount = "LUAS PERSEGI";
      resultHasil = value_1 * value_1;
    } else if (tipe == 3) {
      dCount = "LUAS SEGITIGA";
      resultHasil = 0.5 * value_1 * value_2;
    } else {
      dCount = "LUAS LINGKARAN";
      resultHasil = 3.14 * value_1 * value_1;
    }
    // Ada perkondisian untuk lingkaran dan segitiga

    return Scaffold(
      appBar: AppBar(
        title: Text('ONLINE CALCULATOR'),
        centerTitle: true,
        leading: Icon(
          Icons.favorite,
          color: Colors.pink,
          size: 30,
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              dCount.toString(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                color: Colors.orange,
              ),
            ),
            Text(
              resultHasil.toString(),
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.orangeAccent)),
                  color: Colors.orangeAccent,
                  textColor: Colors.red,
                  padding: EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 60, right: 60),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SelectFigure()),
                    );
                  },
                  child: Text(
                    "Hitung Lagi",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
