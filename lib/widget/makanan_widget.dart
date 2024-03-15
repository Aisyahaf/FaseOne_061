import 'package:flutter/material.dart';

class MakananWidget extends StatefulWidget {
  const MakananWidget({super.key});

  @override
  State<MakananWidget> createState() => _MakananWidgetState();
}

class _MakananWidgetState extends State<MakananWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: "Makanan",
              hintText: "Masukkan Nama Makanan",
              prefixIcon: Icon(Icons.fastfood_rounded)
             ),
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: "Minuman",
              hintText: "Masukkan Nama Minuman",
              prefixIcon: Icon(Icons.local_drink_rounded)
             ),

          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              labelText: "Dessert",
              hintText: "Masukkan Nama Dessert",
              prefixIcon: Icon(Icons.cake_rounded)
             ),

          ),
        ],
      ));
  }
}