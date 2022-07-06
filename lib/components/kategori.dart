import 'package:flutter/material.dart';

import '../constanta.dart';

class Kategori extends StatefulWidget {
  const Kategori({
    Key? key,
  }) : super(key: key);

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  String _selectedCategory = 'Semua';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left : 12.0),
          child: Row(
            children: [
              Text(
                "Categori",
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
              color: Colors.white,
              elevation: 5,
              //round
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                  _selectedCategory == "Semua"
                                      ? bluedefault()
                                      : Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ))
                              //elevatedbutton shape
                              ),
                          onPressed: () {
                            setState(() {
                              _selectedCategory = "Semua";
                            });
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Login()),
                            // );
                          },
                          child: Text("Semua",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: _selectedCategory == "Semua"
                                        ? Colors.white
                                        : bluedefault(),
                                    fontSize: 10,
                                  ))),
                    ),
                    SizedBox(
                      height: 30,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                  _selectedCategory == "Popular"
                                      ? bluedefault()
                                      : Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ))
                              //elevatedbutton shape
                              ),
                          onPressed: () {
                            setState(() {
                              _selectedCategory = "Popular";
                            });
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Login()),
                            // );
                          },
                          child: Text("Popular",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: _selectedCategory == "Popular"
                                        ? Colors.white
                                        : bluedefault(),
                                    fontSize: 10,
                                  ))),
                    ),
                    SizedBox(
                      height: 30,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                  _selectedCategory == "Paling laris"
                                      ? bluedefault()
                                      : Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ))
                              //elevatedbutton shape
                              ),
                          onPressed: () {
                            setState(() {
                              _selectedCategory = "Paling laris";
                            });
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Login()),
                            // );
                          },
                          child: Text("Paling laris",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: _selectedCategory == "Paling laris"
                                        ? Colors.white
                                        : bluedefault(),
                                    fontSize: 10,
                                  ))),
                    ),
                    SizedBox(
                      height: 30,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                  _selectedCategory == "Terbaru"
                                      ? bluedefault()
                                      : Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ))
                              //elevatedbutton shape
                              ),
                          onPressed: () {
                            setState(() {
                              _selectedCategory = "Terbaru";
                            });
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const Login()),
                            // );
                          },
                          child: Text("Terbaru",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: _selectedCategory == "Terbaru"
                                        ? Colors.white
                                        : bluedefault(),
                                    fontSize: 10,
                                  ))),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
