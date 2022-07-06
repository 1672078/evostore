import 'package:evo_store/pages/check_email.dart';
import 'package:flutter/material.dart';

import '../components/input_email.dart';
import '../constanta.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
              'Forgot Password',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: bluedefault()),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Silahkan masukkan email Anda yang terdaftar untuk reset password",
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: greydefault(),
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            InputEmail(
              controller: _emailController,
              label: "Email",
            ),
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const CheckEmail()),
                    );
                  },
                  child: Text(
                    "Kirim",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "Kembali Ke Login",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: bluedefault()),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
