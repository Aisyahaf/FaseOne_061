import 'package:flutter/material.dart';
import 'package:ucp1_dataform/screen/details.dart';
import 'package:ucp1_dataform/widget/footer_makanan.dart';
import 'package:ucp1_dataform/widget/makanan_widget.dart';

class MakananScreen extends StatelessWidget {
  const MakananScreen(
      {super.key, required this.nama, required this.no_telepon});

  final String nama;
  final String no_telepon;

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var makanan = TextEditingController();
    var minuman = TextEditingController();
    var dessert = TextEditingController();

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
          MakananWidget(
              formKey: formKey,
              makanan: makanan,
              minuman: minuman,
              dessert: dessert),
          FooterMakanan(onPressedMakanan: () {
            if (formKey.currentState!.validate()) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(
                          nama: nama,
                          no_telepon: no_telepon,
                          makanan: makanan.text,
                          minuman: minuman.text,
                          dessert: dessert.text)),
                  (route) => false);
            }
          })
        ],
      ),
    );
  }
}
