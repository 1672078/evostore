import 'package:flutter/material.dart';

class CardProdukTransaksi extends StatelessWidget {
  const CardProdukTransaksi({
    Key? key,
    required this.namaProduk,
    required this.hargaProduk,
    required this.jumlahProduk,
    required this.gambar,
    required this.tanggal,
  }) : super(key: key);
  final String namaProduk;
  final String hargaProduk;
  final String jumlahProduk;
  final String gambar;
  final String tanggal;

  @override
  Widget build(BuildContext context) {
    //size
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Card(
        //shape border radius

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        elevation: 5,
        child: SizedBox(
          // height: 200,
          width: size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    child: Image.asset(gambar,
                        width: 120, height: 120, fit: BoxFit.fill)),
              ),
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SizedBox(
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          tanggal,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.blue),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        namaProduk,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(hargaProduk,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                          Text(
                            jumlahProduk,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
