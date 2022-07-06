import 'package:flutter/material.dart';

class CardProductCart extends StatefulWidget {
  const CardProductCart({
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
  State<CardProductCart> createState() => _CardProductCartState();
}

class _CardProductCartState extends State<CardProductCart> {
  int _jumlah = 1;
  @override
  Widget build(BuildContext context) {
    // print(NumberFormat.currency(locale: 'id').format(123456));
    //size
    final size = MediaQuery.of(context).size;
    return Card(
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
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Jumlah",
                            style: Theme.of(context).textTheme.bodyText1),
                        const SizedBox(width: 15),
                        //make button decrease and increase
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_jumlah > 0) {
                                _jumlah--;
                              }
                            });
                          },
                          child: Container(
                            //round
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.grey.shade300),
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(0),
                            child: const Icon(Icons.remove),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(_jumlah.toString(),
                            style: Theme.of(context).textTheme.bodyText1),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _jumlah++;
                            });
                          },
                          child: Container(
                            //round
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.blue.shade200),
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(0),
                            child: const Icon(Icons.add),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
