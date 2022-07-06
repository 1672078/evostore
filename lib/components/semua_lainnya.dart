import 'package:flutter/material.dart';

import '../constanta.dart';

class SemuaLainnya extends StatelessWidget {
  const SemuaLainnya({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Semua",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text("lainnya",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: bluedefault(), fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
