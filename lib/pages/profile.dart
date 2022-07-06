import 'package:evo_store/pages/pilih_alamat.dart';
import 'package:evo_store/pages/settings.dart';
import 'package:flutter/material.dart';
import '../components/button_profile.dart';
import '../components/detail_profile.dart';
import '../components/payment.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool islogin =
    //     context.select<IsloginBloc, bool>((value) => value.state.isLogin);
    //size
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Profile Akun'),
      ),
      body: Column(children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            DetailProfile(size: size),
            Positioned(
                bottom: -35,
                child: SizedBox(width: size.width, child: Payment(size: size)))
          ],
        ),
        const SizedBox(height: 100),
        const ButtonProfile(textnya: "Ubah Profile"),
        const SizedBox(height: 20),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PilihAlamat()),
              );
            },
            child: const ButtonProfile(textnya: "Alamat")),
        const SizedBox(height: 20),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
            child: const ButtonProfile(textnya: "Settings")),
        const SizedBox(height: 20),
        GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
               Navigator.of(context).pop();
            },
            child: const ButtonProfile(textnya: "Logout")),
      ]),
    );
  }
}
