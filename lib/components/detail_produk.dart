import 'package:evo_store/components/recomendasi_lainnya.dart';
import 'package:evo_store/pages/cart_page.dart';
import 'package:flutter/material.dart';

import 'big_divider_grey.dart';
import 'card_product.dart';
import 'info_header_produk.dart';

class DetailProduk extends StatelessWidget {
  const DetailProduk({
    Key? key,
    required this.gambar,
    required this.nama,
    required this.harga,
    required this.rating,
    required this.detailproduk,
    required this.jumlahulasan,
  }) : super(key: key);

  final String gambar, nama, harga, rating, detailproduk, jumlahulasan;

  @override
  Widget build(BuildContext context) {
    //size
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Image.network(gambar, width: size.width),
          Image.asset(
            gambar,
            width: size.width,
            fit: BoxFit.fill,
            // height: 40,
            // fit: BoxFit.fill,
          ),
          InfoHeaderProduk(
              harga: harga,
              nama: nama,
              jumlahterjual: jumlahulasan,
              rating: rating,
              jumlahulasan: jumlahulasan),
          const BigDividerGrey(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rincian', style: Theme.of(context).textTheme.bodyText1),
                // Text(nama, style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(height: 15),
                Text(detailproduk,
                    style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(height: 40)
              ],
            ),
          ),
          const RecomendasiLainnya(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CardProduct(
                  gambar: "assets/images/ryzen1.png",
                  detailproduk:
                      "CUDA Cores 2944 Base Clock (MHz) 1515 Boost Clock (MHz) 1710 Memory Clock 8Gbps Memory Interface Width 256 Memory Interface ... ",
                  harga: "Rp. 11.500.000",
                  nama: "RTX 2080 Founders Edition 8GB NVIDIA",
                  rating: "4.5",
                  jumlahulasan: "(2680 Reviews)"),
              CardProduct(
                  gambar: "assets/images/ram.png",
                  detailproduk: "RAM DDR4 8GB 2666 MHz PC21300",
                  harga: "Rp. 415.000",
                  nama: "RAM DDR4 8GB 2666 MHz PC21300",
                  rating: "4.0",
                  jumlahulasan: "(202 Reviews)"),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CardProduct(
                  gambar: "assets/images/ryzen2.png",
                  detailproduk: "Processor AMD Ryzen 7 3700x 3.6 Ghz",
                  harga: "Rp 4.499.000",
                  nama: "Processor AMD Ryzen 7 3700x 3.6 Ghz",
                  rating: "4.0",
                  jumlahulasan: "(5534 Reviews)"),
              CardProduct(
                  gambar: "assets/images/gpu2.png",
                  detailproduk: "Radeon RX 6800 Gaming X Trio 16GB",
                  harga: "Rp 16.750.000",
                  nama: "Radeon RX 6800 Gaming X Trio 16GB",
                  rating: "4.0",
                  jumlahulasan: "(1230 Reviews)"),
            ],
          ),
          const SizedBox(height: 80),
        ]),
      ),
      bottomSheet: Container(
        color: Colors.white,
        width: size.width,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              harga,
              style: Theme.of(context).textTheme.headline6,
              overflow: TextOverflow.clip,
            ),
            ElevatedButton(
                // style: ElevatedButton.styleFrom(primary: Colors ),
                child: const Text('Beli Sekarang'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CartPage()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
