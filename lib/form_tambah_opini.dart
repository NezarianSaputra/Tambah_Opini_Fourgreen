import 'package:flutter/material.dart';

Icon iconc = new Icon(Icons.chat_bubble_outline_rounded);
Icon icont = new Icon(Icons.shopping_cart_outlined);

class FormTambahOpini extends StatefulWidget {
  @override
  _FormTambahOpiniState createState() => _FormTambahOpiniState();
}

class _FormTambahOpiniState extends State<FormTambahOpini> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF04855e),
        title: Text('OPINI FARMERS'),
        actions: [
          IconButton(
            icon: iconc,
            onPressed: () {},
          ),
          IconButton(
            icon: icont,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color(0xFF04855e),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 2),
                    child: Text(
                      'Judul Opini',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      height: size.height * 0.05,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Masukan Text',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 2, top: 10.0),
                    child: Text(
                      'Masukan Foto',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      height: size.height * 0.30,
                      padding: EdgeInsets.symmetric(horizontal: 120),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: '800 x 445',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 5.0, left: 5.0),
                        height: size.height * 0.05,
                        width: 100,
                        child: Text(
                          'Foto Hanya Dapat Di upload 1',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white,
                          ),
                          maxLines: 2,
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: InkWell(
                          child: Container(
                            height: size.height * 0.04,
                            width: 100.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.white),
                            child: Text(
                              'CHOOSE FILE',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Opini',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Minimal 500 kata',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      height: size.height * 0.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      'Opini kamu akan melalui proses moderasi sebelum di post ke beranda FourGreen Company',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: SwitchListTile(
                      value: _value,
                      onChanged: (bool value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      activeColor: Colors.white,
                      activeTrackColor: Color(0xff129789),
                      inactiveTrackColor: Colors.grey,
                      title: Text(
                        'By creating an Opini, you agree to our',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'Terms of Service and Privacy Policy',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              height: size.height * 0.07,
              color: Colors.white,
              child: InkWell(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Color(0xFF04855e),
                  ),
                  child: Text(
                    'SIMPAN OPINI',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
