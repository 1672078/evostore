import 'package:evo_store/components/card_produk_search.dart';
import 'package:evo_store/components/mungkin_disukai.dart';
import 'package:evo_store/components/search_appbar_page.dart';
import 'package:flutter/material.dart';

class Search5pageDiscount extends StatelessWidget {
  const Search5pageDiscount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
            //textformfield search round
            const SearchAppbarpage(
          hintText: 'Search',
        ),
        actions: [
          InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const CartPageForPush()),
              // );
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: const [
          MungkinDisukai(),
          CardProductSearch(
              gambar: "assets/images/gpu.png",
              detailproduk: "RTX 2080 Founders Edition 8GB NVIDIA",
              harga: "Rp. 11.500.000",
              nama: "RTX 2080 Founders Edition 8GB NVIDIA",
              isFavorite: false,
              rating: "4.5",
              jumlahulasan: "(2680 Reviews)"),
          CardProductSearch(
              gambar: "assets/images/gpu2.png",
              detailproduk: "Radeon RX 6800 Gaming X Trio 16GB",
              isFavorite: false,
              harga: "Rp 16.750.000",
              nama: "Radeon RX 6800 Gaming X Trio 16GB",
              rating: "4.0",
              jumlahulasan: "(1230 Reviews)"),
          CardProductSearch(
              gambar: "assets/images/gpu3.png",
              detailproduk: "EVGA Geforce GTX 1660 Ti Ultra Gaming GDDR6",
              isFavorite: false,
              harga: "Rp 5.375.000",
              nama: "EVGA Geforce GTX 1660 Ti Ultra Gaming GDDR6",
              rating: "4.5",
              jumlahulasan: "(5378 Reviews)"),
          CardProductSearch(
              gambar: "assets/images/gpu.png",
              detailproduk: "Geforce RTX 3060 Ti OC-V 8GB GDDR6",
              isFavorite: false,
              harga: "Rp 11.625.000",
              nama: "Geforce RTX 3060 Ti OC-V 8GB GDDR6",
              rating: "4.5",
              jumlahulasan: "(1620 Reviews)"),
          CardProductSearch(
              gambar: "assets/images/gpu.png",
              detailproduk: "RTX 2080 Founders Edition 8GB NVIDIA",
              isFavorite: false,
              harga: "Rp. 11.500.000",
              nama: "RTX 2080 Founders Edition 8GB NVIDIA",
              rating: "4.5",
              jumlahulasan: "(2680 Reviews)"),
          CardProductSearch(
              gambar: "assets/images/gpu2.png",
              detailproduk: "Radeon RX 6800 Gaming X Trio 16GB",
              isFavorite: false,
              harga: "Rp 16.750.000",
              nama: "Radeon RX 6800 Gaming X Trio 16GB",
              rating: "4.0",
              jumlahulasan: "(1230 Reviews)"),
          CardProductSearch(
              gambar: "assets/images/gpu3.png",
              detailproduk: "EVGA Geforce GTX 1660 Ti Ultra Gaming GDDR6",
              harga: "Rp 5.375.000",
              isFavorite: false,
              nama: "EVGA Geforce GTX 1660 Ti Ultra Gaming GDDR6",
              rating: "4.5",
              jumlahulasan: "(5378 Reviews)"),
          CardProductSearch(
              gambar: "assets/images/gpu.png",
              detailproduk: "Geforce RTX 3060 Ti OC-V 8GB GDDR6",
              isFavorite: false,
              harga: "Rp 11.625.000",
              nama: "Geforce RTX 3060 Ti OC-V 8GB GDDR6",
              rating: "4.5",
              jumlahulasan: "(1620 Reviews)"),
          CardProductSearch(
              gambar: "assets/images/gpu.png",
              detailproduk: "RTX 2080 Founders Edition 8GB NVIDIA",
              isFavorite: false,
              harga: "Rp. 11.500.000",
              nama: "RTX 2080 Founders Edition 8GB NVIDIA",
              rating: "4.5",
              jumlahulasan: "(2680 Reviews)"),
          CardProductSearch(
              gambar: "assets/images/gpu2.png",
              detailproduk: "Radeon RX 6800 Gaming X Trio 16GB",
              isFavorite: false,
              harga: "Rp 16.750.000",
              nama: "Radeon RX 6800 Gaming X Trio 16GB",
              rating: "4.0",
              jumlahulasan: "(1230 Reviews)"),
          CardProductSearch(
              gambar: "assets/images/gpu3.png",
              detailproduk: "EVGA Geforce GTX 1660 Ti Ultra Gaming GDDR6",
              isFavorite: false,
              harga: "Rp 5.375.000",
              nama: "EVGA Geforce GTX 1660 Ti Ultra Gaming GDDR6",
              rating: "4.5",
              jumlahulasan: "(5378 Reviews)"),
          CardProductSearch(
              gambar: "assets/images/gpu.png",
              detailproduk: "Geforce RTX 3060 Ti OC-V 8GB GDDR6",
              isFavorite: false,
              harga: "Rp 11.625.000",
              nama: "Geforce RTX 3060 Ti OC-V 8GB GDDR6",
              rating: "4.5",
              jumlahulasan: "(1620 Reviews)"),
        ]),
      ),
    );
  }
}
