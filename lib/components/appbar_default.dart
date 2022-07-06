import 'package:evo_store/bloc/Islogin/islogin_bloc.dart';
import 'package:evo_store/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constanta.dart';
import '../pages/login.dart';
import 'search_appbar.dart';

class AppbarDefault extends StatelessWidget {
  const AppbarDefault({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final dp = Provider.of<DataProvider>(context);
    bool islogin =
        context.select<IsloginBloc, bool>((value) => value.state.isLogin);
    return AppBar(
      backgroundColor: bluedefault(),
      title:
          //textformfield search round
          const SearchAppbar(),
      actions: [
        InkWell(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const CartPageForPush()),
            // );
          },
          child: const Icon(
            Icons.shopping_cart_outlined,
            size: 30,
          ),
        ),
        islogin
            ? InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 10, left: 10),
                  child: Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
              )
            : TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: Text(
                  'Login',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: Colors.white),
                )),
      ],
    );
  }
}
