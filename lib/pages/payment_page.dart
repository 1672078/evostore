import 'package:evo_store/pages/pilih_alamat.dart';
import 'package:flutter/material.dart';

import '../components/alamat.dart';
import '../components/card_produk_pembayaran.dart';
import '../constanta.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({Key? key}) : super(key: key);

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  String _metodePembayaran = 'OVO';
  //make controller for textfield
  final _controllerNama = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //size
    final size = MediaQuery.of(context).size;

    void _showdialog() {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          backgroundColor: Colors.white,
          // title: const Text('Not Valid!'),
          content: SizedBox(
            height: 250,
            child: Column(children: [
              //make circle
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bluedefault(),
                ),
                child: const Icon(
                  Icons.check_outlined,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Terima Kasih!",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                "Pesanan anda berhasil dibayar dan akan diantar ke alamat tujuan, harap tunggu. Kami tunggu pembelian anda selanjutnya!",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: greydefault(),
                    ),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: <Widget>[
            SizedBox(
              width: 100,
              child: ElevatedButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pembayaran"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Alamat Pelanggan",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PilihAlamat()),
                    );
                  },
                  child: Text(
                    "Ubah",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: const [
                Alamat(
                  nama: "Ahmad Susanto",
                  jalan: "Jl. Telekomunikasi No 62, Bandung, Jawa Barat",
                  nomorhp: "0812-3456-7890",
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Text(
                  "Barang yang dibeli",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            const SizedBox(height: 15),
            const CardProdukPembayaran(
              namaProduk: "RTX 2080 Founders Edition 8GB NVIDIA",
              hargaProduk: "Rp 11.500.000",
              jumlahProduk: "x1",
              gambar: "assets/images/gpu.png",
            ),
            const CardProdukPembayaran(
              namaProduk: "EVGA Geforce GTX 1660 Ti Ultra Gaming GDDR6",
              hargaProduk: "Rp 5.375.000",
              jumlahProduk: "x1",
              gambar: "assets/images/gpu2.png",
            ),
            Row(
              children: [
                Text(
                  "Pengiriman",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Durasi pengiriman (2-3 hari)"),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("J&T express"),
                      Text(
                        "Rp 10.000",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Text(
                  "Payment Method",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),

            //make checkbox for payment method
            const SizedBox(height: 15),
            Row(
              children: [
                Checkbox(
                    value: _metodePembayaran == "OVO" ? true : false,
                    onChanged: (value) {
                      if (value == true) {
                        setState(() {
                          _metodePembayaran = "OVO";
                        });
                      }
                    }),
                Image.asset(
                  "assets/images/ovo.png",
                  height: 40,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 15),
                Text(
                  "OVO",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: _metodePembayaran == "Gopay" ? true : false,
                    onChanged: (value) {
                      if (value == true) {
                        setState(() {
                          _metodePembayaran = "Gopay";
                        });
                      }
                    }),
                Image.asset(
                  "assets/images/gopay.png",
                  height: 40,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 15),
                Text(
                  "Gopay",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                    value: _metodePembayaran == "DANA" ? true : false,
                    onChanged: (value) {
                      if (value == true) {
                        setState(() {
                          _metodePembayaran = "DANA";
                        });
                      }
                    }),
                Image.asset(
                  "assets/images/dana.png",
                  height: 40,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 15),
                Text(
                  "DANA",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              // width: 300,
              alignment: Alignment.center,
              // height: 40,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.top,
                controller: _controllerNama,
                decoration: InputDecoration(
                  //shape
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  helperMaxLines: 1,
                  // isCollapsed: true,
                  // isDense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  // border: const OutlineInputBorder(),
                  labelText: "  Masukkan Kode Promo",
                  floatingLabelStyle: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 0),
                  labelStyle: //theme context
                      Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 150),
          ],
        )),
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
                  onPressed: _showdialog,
                  child: Text(
                    'Konfirmasi',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.white, fontSize: 16),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
