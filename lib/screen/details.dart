import 'package:flutter/material.dart';
import 'package:ucp1_dataform/screen/dataform.dart';
import 'package:ucp1_dataform/widget/footer_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {super.key,
      required this.nama,
      required this.no_telepon,
      required this.makanan,
      required this.minuman,
      required this.dessert});

  final String nama;
  final String no_telepon;
  final String makanan;
  final String minuman;
  final String dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail Makanan"),
        ),
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Nama : $nama"),
                SizedBox(
                  height: 15,
                ),
                Text("No Telepon : $no_telepon"),
                SizedBox(
                  height: 15,
                ),
                Text("Makanan : $makanan"),
                SizedBox(
                  height: 15,
                ),
                Text("Minuman : $minuman"),
                SizedBox(
                  height: 15,
                ),
                Text("Dessert : $dessert"),
                SizedBox(
                  height: 15,
                ),
                FooterDetail(onPressedDetail: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => FormScreen()),
                      (route) => false);
                })
              ],
            ),
          ),
        )));
  }
}
