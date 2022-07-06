import 'package:evo_store/components/search_appbar_page.dart';
import 'package:flutter/material.dart';

import '../components/card_produk_search.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //size
    // final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const SearchAppbarpage(hintText: "Cari Wishlist"),
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
            CardProductSearch(
                gambar: "assets/images/gpu.png",
                detailproduk: "RTX 2080 Founders Edition 8GB NVIDIA",
                harga: "Rp. 11.500.000",
                nama: "RTX 2080 Founders Edition 8GB NVIDIA",
                isFavorite: true,
                rating: "4.5",
                jumlahulasan: "(2680 Reviews)"),
            CardProductSearch(
                gambar: "assets/images/gpu3.png",
                detailproduk: "EVGA Geforce GTX 1660 Ti Ultra Gaming GDDR6",
                isFavorite: true,
                harga: "Rp 5.375.000",
                nama: "EVGA Geforce GTX 1660 Ti Ultra Gaming GDDR6",
                rating: "4.5",
                jumlahulasan: "(5378 Reviews)"),
          ],
        )),
      ),
    );
  }
}
