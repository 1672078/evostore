import 'package:evo_store/components/input_password.dart';
import 'package:flutter/material.dart';

import '../constanta.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _konfirmasipasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    void _showdialog(String message) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          backgroundColor: Colors.white,
          // title: const Text('Not Valid!'),
          content: SizedBox(
            height: 200,
            child: Column(children: [
              //make circle
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bluedefault(),
                ),
                child: const Icon(
                  Icons.check_outlined,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Ubah Berhasil",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                "Password anda berhasil diubah!              Silahkan Login kembali.",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: greydefault(),
                    ),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: <Widget>[
            SizedBox(
              width: 100,
              child: ElevatedButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconTheme.of(context).copyWith(color: greydefault()),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(children: [
            Text(
              'Reset Password',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: bluedefault()),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Masukkan password baru yang diinginkan",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: greydefault(),
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            InputPassword(
                passwordController: _passwordController, text: "New Password"),
            const SizedBox(
              height: 20,
            ),
            InputPassword(
                passwordController: _konfirmasipasswordController,
                text: "Confirm Password"),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(bluedefault()),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ))
                      //elevatedbutton shape
                      ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const Login()),
                    // );
                    _showdialog("coba");
                  },
                  child: Text(
                    "Ubah",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            ),
            const SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}
