import 'package:flutter/material.dart';
import '../model/poli.dart';
import '../ui/poli_detail.dart';

class PoliUpdateForm extends StatefulWidget {
  final Poli poli;

  const PoliUpdateForm({Key? key, required this.poli}) : super(key: key);

  @override
  PoliUpdateFormState createState() => PoliUpdateFormState();
}

class PoliUpdateFormState extends State<PoliUpdateForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _namaPoliCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPoliCtrl.text = widget.poli.namaPoli;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Poli")),
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

  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        _simpanPerubahan();
      },
      child: const Text("Simpan Perubahan"),
    );
  }

  void _simpanPerubahan() {
    Poli poli = Poli(namaPoli: _namaPoliCtrl.text);
    Navigator.pop(context);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
    );
  }
}