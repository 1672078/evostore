
import 'package:flutter/material.dart';

class MasukkanPromo extends StatelessWidget {
  const MasukkanPromo({
    Key? key,
    required TextEditingController controller,
  })  : _controller = controller,
        super(key: key);

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      alignment: Alignment.center,
      // height: 40,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.top,
        controller: _controller,
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
            fillColor: Colors.blue.shade100,
            filled: true,
            // border: const OutlineInputBorder(),
            labelText: "Masukkan Kode Promo untuk dapatkan Diskon",
            floatingLabelStyle:
                Theme.of(context).textTheme.caption!.copyWith(fontSize: 0),
            labelStyle: //theme context
                Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.black, fontSize: 8),
            prefixIcon: const Icon(Icons.notifications_none)),
      ),
    );
  }
}
