import 'package:evo_store/components/detail_produk.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    Key? key,
    required this.gambar,
    required this.detailproduk,
    required this.harga,
    required this.nama,
    required this.rating,
    required this.jumlahulasan,
  }) : super(key: key);

  final String gambar, detailproduk, harga, nama, rating, jumlahulasan;
  @override
  Widget build(BuildContext context) {
    // print(NumberFormat.currency(locale: 'id').format(123456));
    //size
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailProduk(
                    gambar: gambar,
                    nama: nama,
                    harga: harga,
                    jumlahulasan: jumlahulasan,
                    rating: rating,
                    detailproduk: detailproduk,
                  )),
        );
      },
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        color: Colors.white,
        elevation: 10,
        child: SizedBox(
          // height: 200,
          width: size.width * 0.42,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.42,
                child: Stack(
                  children: [
                    SizedBox(
                        // decoration: BoxDecoration(
                        //     borderRadius:
                        //         BorderRadius.all(Radius.circular(12))),
                        width: size.width * 0.42,
                        height: 150,
                        child:
                            // Image.network(
                            //   gambar,
                            //   fit: BoxFit.fill,
                            // ),
                            ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                                child: Image.asset(gambar, fit: BoxFit.cover))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nama,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: 5),
                    Text(harga,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(Icons.star, size: 15, color: Colors.amber),
                        Text("$rating $jumlahulasan",
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
