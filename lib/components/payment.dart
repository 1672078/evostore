import 'package:flutter/material.dart';


class Payment extends StatelessWidget {
  const Payment({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        color: Colors.white,
        elevation: 5,
        //round
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Container(
            alignment: Alignment.centerLeft,
            width: size.width,
            height: 30,
            margin:
                const EdgeInsets.only(left: 20, top: 12, bottom: 12, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/ovo.png"),
                    const SizedBox(width: 10),
                    Text(
                      "OVO",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  "Rp. 26.450.000",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ),
    );
  }
}
