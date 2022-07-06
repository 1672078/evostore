import 'package:evo_store/components/alamat.dart';
import 'package:evo_store/components/search_appbar_page.dart';
import 'package:flutter/material.dart';

class PilihAlamat extends StatefulWidget {
  const PilihAlamat({Key? key}) : super(key: key);

  @override
  State<PilihAlamat> createState() => _PilihAlamatState();
}

class _PilihAlamatState extends State<PilihAlamat> {
  String alamatnya = "Rumah";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Alamat'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_circle_outline))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          const SearchAppbarpage(
            hintText: 'Cari Alamat',
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              //make radio button
              Radio(
                value: "Rumah",
                groupValue: alamatnya,
                onChanged: (String? value) {
                  setState(() {
                    alamatnya = value!;
                  });
                },
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: const Alamat(
                  nama: "Ahmad Susanto",
                  jalan: "Jl. Telekomunikasi No 62, Bandung, Jawa Barat",
                  nomorhp: "0812-3456-7890",
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              //make radio button
              Radio(
                value: "Kantor",
                groupValue: alamatnya,
                onChanged: (String? value) {
                  setState(() {
                    alamatnya = value!;
                  });
                },
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: const Alamat(
                  nama: "PT. Suka Maju",
                  jalan: "Jl. Sukajadi No 11, Bandung, Jawa Barat",
                  nomorhp: "1500 300",
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
