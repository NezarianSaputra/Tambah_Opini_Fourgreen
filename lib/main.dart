import 'package:flutter/material.dart';
import 'package:tambah_opini_fourgreen/form_tambah_opini.dart';

void main() {
  runApp(TambahOpini());
}

class TambahOpini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormTambahOpini(),
    );
  }
}
