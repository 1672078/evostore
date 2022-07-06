import 'package:evo_store/constanta.dart';
import 'package:flutter/material.dart';

class SearchAppbar extends StatefulWidget {
  const SearchAppbar({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchAppbar> createState() => _SearchAppbarState();
}

class _SearchAppbarState extends State<SearchAppbar> {
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
              .copyWith(color: Colors.white),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            fillColor: bluedefault(),
            filled: true,
            hintText: 'Search',
            hintStyle: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: Colors.white60),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          )),
    );
  }
}
