import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget(
      {super.key,
      required this.formKey,
      required this.etNama,
      required this.etTelepon,
      required this.etAlamat});

  final GlobalKey<FormState> formKey;
  final TextEditingController etNama;
  final TextEditingController etTelepon;
  final TextEditingController etAlamat;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

enum JenisKelamin { perempuan, laki2 }

class _FormWidgetState extends State<FormWidget> {
  JenisKelamin? _jenisKelamin = JenisKelamin.perempuan;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Column(
          children: [
            TextFormField(
              controller: widget.etNama,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  labelText: "Nama",
                  hintText: "Masukkan Nama",
                  prefixIcon: Icon(Icons.person)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Nama Tidak Boleh Kosong";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: widget.etTelepon,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  labelText: "Nomor Telepon",
                  hintText: "Masukkan No Telepon",
                  prefixIcon: Icon(Icons.call)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "No Telepon Tidak Boleh Kosong";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: widget.etAlamat,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  labelText: "Alamat",
                  hintText: "Masukkan Alamat",
                  prefixIcon: Icon(Icons.home_rounded)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Alamat Tidak Boleh Kosong";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Jenis Kelamin"),
                ListTile(
                  title: Text("Perempuan"),
                  leading: Radio<JenisKelamin>(
                    value: JenisKelamin.perempuan,
                    groupValue: _jenisKelamin,
                    onChanged: (JenisKelamin? value) {
                      setState(() {
                        _jenisKelamin = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text("Laki-Laki"),
                  leading: Radio<JenisKelamin>(
                    value: JenisKelamin.laki2,
                    groupValue: _jenisKelamin,
                    onChanged: (JenisKelamin? value) {
                      setState(() {
                        _jenisKelamin = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
