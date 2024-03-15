import 'package:flutter/material.dart';
import 'package:ucp1_dataform/screen/datamakanan.dart';
import 'package:ucp1_dataform/widget/footer_form.dart';
import 'package:ucp1_dataform/widget/form_widget.dart';
import 'package:ucp1_dataform/widget/header_form.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var formKey = GlobalKey<FormState>();
    var nama = TextEditingController();
    var no_telepon = TextEditingController();
    var alamat = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                HeaderForm(),
                FormWidget(formKey: formKey, etNama: nama, etTelepon: no_telepon, etAlamat: alamat),
                FooterForm(onPressedForm: (){
                  if(formKey.currentState!.validate()){
                    Navigator.pushAndRemoveUntil(
                      context, MaterialPageRoute(
                        builder: (context) => MakananScreen(nama: nama.text, no_telepon: no_telepon.text,) ), 
                        (route) => false);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Submit Data Berhasil"),
                          ),
                        );
                  }
                })
              ],
            ),
          ),
        )),
    );
  }
}