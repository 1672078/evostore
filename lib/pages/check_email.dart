import 'package:evo_store/pages/reset_password.dart';
import 'package:flutter/material.dart';

import '../constanta.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'Check Email',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: bluedefault()),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Email untuk reset password telah terkirim. Silahkan untuk cek email untuk instruksi reset password.",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: greydefault(),
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(bluedefault()),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ))
                        //elevatedbutton shape
                        ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const ResetPassword()),
                      );
                    },
                    child: Text(
                      "Selesai",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
