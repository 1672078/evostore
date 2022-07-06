import 'package:flutter/material.dart';

import 'row_alamat.dart';

class Alamat extends StatelessWidget {
  const Alamat({
    Key? key,
    required this.nama,
    required this.jalan,
    required this.nomorhp,
  }) : super(key: key);

  final String nama, jalan, nomorhp;

  @override
  Widget build(BuildContext context) {
    //size
    // final size = MediaQuery.of(context).size;

    return SizedBox(
      width: 250,
      child: Column(
        children: [
          RowAlamat(icon: const Icon(Icons.person_outline), text: nama),
          const SizedBox(height: 10),
          RowAlamat(icon: const Icon(Icons.location_on_outlined), text: jalan),
          const SizedBox(height: 10),
          RowAlamat(icon: const Icon(Icons.call_outlined), text: nomorhp),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
