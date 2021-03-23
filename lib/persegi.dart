import 'package:flutter/material.dart';
import 'all_result.dart';

class Persegi extends StatefulWidget {
  @override
  _PersegiState createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  double sisi;
  int tipe = 2;
  // 1 = Persegi Panjang
  // 2 = Persegi
  // 3 = Segitiga
  // 4 = Lingkaran

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('LUAS PERSEGI'),
        centerTitle: true,
        leading: Icon(
          Icons.favorite,
          color: Colors.pink,
          size: 30,
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              // color: Colors.blue[700],
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: new Theme(
                          data: new ThemeData(
                              primaryColor: Colors.orange,
                              primaryColorDark: Colors.orange),
                          child: new TextField(
                            onChanged: (txt) {
                              setState(() {
                                sisi = double.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 12,
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.orange)),
                                hintText: 'Masukkan Sisi Persegi',
                                labelText: 'Sisi Persegi',
                                prefixIcon: const Icon(
                                  Icons.border_color,
                                  color: Colors.orange,
                                ),
                                prefixText: ' ',
                                suffixStyle:
                                    const TextStyle(color: Colors.orange)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    side: BorderSide(color: Colors.orangeAccent)),
                color: Colors.orangeAccent,
                textColor: Colors.orangeAccent,
                padding: EdgeInsets.all(12.0),
                onPressed: () {
                  if (sisi != null) {
                    if ((sisi >= 0)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CountResult(
                                  value_1: sisi,
                                  value_2: null,
                                  tipe: tipe,
                                )),
                      );
                    } else {
                      return ErrorDescription("Nilai Tidak Boleh Minus");
                    }
                  } else {
                    return ErrorDescription("Textfield Wajib Diisi");
                  }
                },
                child: Text(
                  "Hitung Luas",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
