
import 'package:flutter/material.dart';
import 'package:flutter_klinik/model/poli.dart';
import 'poli_update_form.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;
  const PoliDetail({super.key, required this.poli});

  @override
  _PoliDetailState createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Poli"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text("Nama Poli : ${widget.poli.namaPoli}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text("Ubah"),
              ),
              ElevatedButton(
                onPressed: () {
                  _tombolHapus(context);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("Hapus"),
              ),
            ],
          )
        ],
      ),
    );
  }
  _tombolUbah() {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PoliUpdateForm(poli: widget.poli)));
    },
    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
    child: const Text("Ubah"),
  );
}

void _tombolHapus(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: const Text("Yakin ingin menghapus data ini?"),
      actions: [
        // tombol ya
        ElevatedButton(
          onPressed: () {
            // Tambahkan logika penghapusan di sini
            Navigator.pop(context);
          },
          child: const Text("Ya"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        ),
        // tombol batal
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Tidak"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        ),
      ],
    ),
  );
}
}