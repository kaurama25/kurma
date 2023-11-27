import 'package:flutter/material.dart';
import 'package:flutter_klinik/model/poli.dart';
import 'package:flutter_klinik/ui/poli_detail.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);

  @override
  PoliFormState createState() => PoliFormState();
}

class PoliFormState extends State<PoliForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPoli(),
              SizedBox(height: 20),
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    );
  }

    _tombolSimpan() {
    return ElevatedButton(
      onPressed: (){
        Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
          );
        },
      child: const Text("Simpan"),
    );
  }

}