import 'package:flutter/material.dart';
import 'all_result.dart';
class PersegiPanjang extends StatefulWidget {
  @override
  _PersegiPanjangState createState() => _PersegiPanjangState();
}

class _PersegiPanjangState extends State<PersegiPanjang> {
  double panjang ;
  double lebar ;
  int tipe = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('LUAS PERSEGI PANJANG'),
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
                                  panjang = double.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 12,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.orange)),
                                  hintText: 'Masukkan Panjang',
                                  labelText: 'Panjang',
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
                                  lebar = double.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 12,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.orange)),
                                  hintText: 'Masukkan Lebar',
                                  labelText: 'Lebar',
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
                  if (panjang != null && lebar != null) {
                    if ((panjang >= 0 && lebar >= 0)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CountResult(
                                  value_1: panjang,
                                  value_2: lebar,
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
