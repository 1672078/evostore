import 'package:flutter/material.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius:  BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          )),
      width: size.width,
      child:
          //image circle avatar
          Column(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Image.asset("assets/images/user.png",
                width: 50, height: 50, fit: BoxFit.fill),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Ahmad Susanto",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 200,
            child: Text(
              "Jl. Telekomunikasi No 62, Bandung, Jawa Barat",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
