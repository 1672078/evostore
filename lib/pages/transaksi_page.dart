import 'package:evo_store/components/card_produk_transaksi.dart';
import 'package:evo_store/components/search_appbar_page.dart';
import 'package:flutter/material.dart';

class TransaksiPage extends StatelessWidget {
  const TransaksiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //size
    // final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const SearchAppbarpage(hintText: "Cari Transaksi"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.sort,
                  color: Colors.black,
                )),
          ],
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: const [
            SizedBox(height: 20),
            CardProdukTransaksi(
              namaProduk: "RTX 2080 Founders Edition 8GB NVIDIA",
              hargaProduk: "Rp 11.500.000",
              jumlahProduk: "x1",
              gambar: "assets/images/gpu.png",
              tanggal: "28 Maret 2022",
            ),
            CardProdukTransaksi(
              namaProduk: "EVGA Geforce GTX 1660 Ti Ultra Gaming GDDR6",
              hargaProduk: "Rp 5.375.000",
              jumlahProduk: "x1",
              gambar: "assets/images/gpu2.png",
              tanggal: "29 Maret 2022",
            ),
          ],
        )),
      ),
    );
  }
}
