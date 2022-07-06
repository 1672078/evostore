import 'package:flutter/material.dart';

import 'detail_produk.dart';

class CardProductSearch extends StatefulWidget {
  const CardProductSearch({
    Key? key,
    required this.gambar,
    required this.detailproduk,
    required this.harga,
    required this.nama,
    required this.rating,
    required this.jumlahulasan,
    required this.isFavorite,
  }) : super(key: key);

  final String gambar, detailproduk, harga, nama, rating, jumlahulasan;
  final bool isFavorite;

  @override
  State<CardProductSearch> createState() => _CardProductSearchState();
}

class _CardProductSearchState extends State<CardProductSearch> {
  @override
  void initState() {
    _isFavorite = widget.isFavorite;
    super.initState();
  }

  bool _isFavorite = false;
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
                    gambar: widget.gambar,
                    nama: widget.nama,
                    harga: widget.harga,
                    jumlahulasan: widget.jumlahulasan,
                    rating: widget.rating,
                    detailproduk: widget.detailproduk,
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
          width: size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 170,
                child: Stack(
                  children: [
                    SizedBox(
                        // decoration: BoxDecoration(
                        //     borderRadius:
                        //         BorderRadius.all(Radius.circular(12))),
                        width: 160,
                        height: 150,
                        child:
                            // Image.network(
                            //   gambar,
                            //   fit: BoxFit.fill,
                            // ),
                            ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    bottomLeft: Radius.circular(12)),
                                child: Image.asset(widget.gambar,
                                    fit: BoxFit.cover))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: SizedBox(
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.nama,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      const SizedBox(height: 5),
                      Text(widget.harga,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const Icon(Icons.star, size: 15, color: Colors.amber),
                          Text("${widget.rating} ${widget.jumlahulasan}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(fontSize: 11)),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  _isFavorite = !_isFavorite;
                                });
                              },
                              icon: Icon(
                                _isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                              ))
                        ],
                      ),
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
