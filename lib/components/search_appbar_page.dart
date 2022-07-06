import 'package:flutter/material.dart';

class SearchAppbarpage extends StatefulWidget {
  const SearchAppbarpage({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;
  @override
  State<SearchAppbarpage> createState() => _SearchAppbarpageState();
}

class _SearchAppbarpageState extends State<SearchAppbarpage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
          controller: _controller,
          onEditingComplete: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //       builder: (context) => ListProdukSearch(
            //             textSearch: _controller.text,
            //           )),
            // );
          },
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.black),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            fillColor: Colors.white,
            filled: true,
            hintText: widget.hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.black54),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
    );
  }
}
