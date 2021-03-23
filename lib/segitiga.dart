import 'package:flutter/material.dart';
import 'all_result.dart';
class Segitiga extends StatefulWidget {
  @override
  _SegitigaState createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  double alas ;
  double tinggi ;
  int tipe = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('LUAS SEGITIGA'),
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
                                  alas = double.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 12,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.orange)),
                                  hintText: 'Masukkan Alas',
                                  labelText: 'Alas',
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
                                  tinggi = double.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 12,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.orange)),
                                  hintText: 'Masukkan Tinggi',
                                  labelText: 'Tinggi',
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
                )),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    side: BorderSide(color: Colors.orangeAccent)),
                color: Colors.orangeAccent,
                textColor: Colors.orangeAccent,
                padding: EdgeInsets.all(12.0),
                onPressed: () {
                  if (alas != null && tinggi != null) {
                    if ((alas >= 0 && tinggi >= 0)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CountResult(
                                  value_1: alas,
                                  value_2: tinggi,
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
