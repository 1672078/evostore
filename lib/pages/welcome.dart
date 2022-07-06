import 'package:evo_store/constanta.dart';
import 'package:evo_store/pages/login.dart';
import 'package:evo_store/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/Islogin/islogin_bloc.dart';
import 'tabbar_component.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                context.read<IsloginBloc>().add(UserSignoutEvent());
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TabbarComponent()),
                );
              },
              child: Text(
                "Lewati >    ",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: greydefault()),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/logo.png",
                        width: 188, height: 125),
                    Image.asset("assets/images/evostore.png",
                        width: 374, height: 38),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text("Welcome",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: bluedefault(),
                                      fontWeight: FontWeight.bold,
                                    )),
                        const SizedBox(height: 40),
                      ],
                    ),
                    Text(
                        "Komponen komputer terlengkap yang dapat memenuhi kebutuhanmu",
                        style: Theme.of(context).textTheme.bodyText1),
                    const SizedBox(height: 100),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(bluedefault()),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ))
                              //elevatedbutton shape
                              ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
                            );
                          },
                          child: Text(
                            "Masuk",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                          )),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: Text("Daftar",
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: bluedefault(),
                                    fontWeight: FontWeight.bold,
                                  )),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
