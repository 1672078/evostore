import 'package:flutter/material.dart';

class InfoHeaderProduk extends StatelessWidget {
  const InfoHeaderProduk({
    Key? key,
    required this.harga,
    required this.nama,
    required this.jumlahterjual,
    required this.rating,
    required this.jumlahulasan,
  }) : super(key: key);

  final String harga;
  final String nama;
  final String jumlahterjual;
  final String rating;
  final String jumlahulasan;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nama,
            style: Theme.of(context).textTheme.headline6,
            overflow: TextOverflow.clip,
          ),

          Row(
            children: [
              // Row(
              //   children: [
              //     Text('Terjual  ' + jumlahterjual,
              //         style: Theme.of(context).textTheme.bodySmall),
              //   ],
              // ),
              const SizedBox(width: 15),
              Row(
                children: [
                  const Icon(Icons.star, size: 15, color: Colors.amber),
                  const Icon(Icons.star, size: 15, color: Colors.amber),
                  const Icon(Icons.star, size: 15, color: Colors.amber),
                  const Icon(Icons.star, size: 15, color: Colors.amber),
                  const Icon(Icons.star_half, size: 15, color: Colors.amber),
                  Text(rating, style: Theme.of(context).textTheme.bodySmall),
                  Text("   $jumlahulasan",
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ],
          ),
          //container rating
        ],
      ),
    );
  }
}
