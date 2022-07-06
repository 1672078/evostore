import 'package:evo_store/components/card_produk_cart.dart';
import 'package:evo_store/components/filter_search.dart';
import 'package:evo_store/pages/payment_page.dart';
import 'package:flutter/material.dart';

import '../components/masukkan_promo.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //make controller
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //size
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 15),
            MasukkanPromo(controller: _controller),
            const SizedBox(height: 25),
            const FilterSearch(),
            const SizedBox(height: 25),
            const CardProductCart(
                gambar: "assets/images/gpu.png",
                detailproduk: "RTX 2080 Founders Edition 8GB NVIDIA",
                harga: "Rp. 11.500.000",
                nama: "RTX 2080 Founders Edition 8GB NVIDIA",
                rating: "4.5",
                jumlahulasan: "(2680 Reviews)"),
            const CardProductCart(
                gambar: "assets/images/gpu2.png",
                detailproduk: "Radeon RX 6800 Gaming X Trio 16GB",
                harga: "Rp 16.750.000",
                nama: "Radeon RX 6800 Gaming X Trio 16GB",
                rating: "4.0",
                jumlahulasan: "(1230 Reviews)"),
          ]),
        ),
        bottomSheet: Container(
          color: Colors.white,
          width: size.width,
          height: 150,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.clip,
                    ),
                    Text(
                      "Rp. 16.875.000",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    child: Text(
                      'Konfirmasi',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.white, fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Pembayaran()),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
