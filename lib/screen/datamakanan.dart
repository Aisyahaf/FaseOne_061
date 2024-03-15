import 'package:flutter/material.dart';
import 'package:ucp1_dataform/widget/footer_makanan.dart';
import 'package:ucp1_dataform/widget/makanan_widget.dart';

class MakananScreen extends StatelessWidget {
  const MakananScreen(
      {super.key, required this.nama, required this.no_telepon});

  final String nama;
  final String no_telepon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Makanan"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Nama :  $nama"),
          SizedBox(
            height: 15,
          ),
          Text("No Telepon :  $no_telepon"),
          SizedBox(
            height: 15,
          ),
          MakananWidget(),
          FooterMakanan(onPressedMakanan: () {})
        ],
      ),
    );
  }
}
