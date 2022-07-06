import 'package:evo_store/bloc/Islogin/islogin_bloc.dart';
import 'package:evo_store/components/card_product.dart';
import 'package:evo_store/components/payment.dart';
import 'package:evo_store/components/slide_show_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/appbar_default.dart';
import '../components/kategori.dart';
import '../components/payment_disconnect.dart';
import '../components/semua_lainnya.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool islogin =
        context.select<IsloginBloc, bool>((value) => value.state.isLogin);
    //size
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50.0), child: AppbarDefault()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Paymentdisconnect(size: size),
            islogin ? Payment(size: size) : Paymentdisconnect(size: size),
            const SlideShowImage(),
            const Kategori(),
            const SemuaLainnya(),
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
            )
          ],
        ),
      ),
    );
  }
}
