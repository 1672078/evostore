import 'package:evo_store/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/Islogin/islogin_bloc.dart';
import '../components/input_email.dart';
import '../components/input_password.dart';
import '../constanta.dart';
import 'tabbar_component.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _konfirmpasswordController =
      TextEditingController();

  bool _isChecked = false;
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
              'Sign Up',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: bluedefault()),
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
            InputPassword(
                passwordController: _passwordController, text: "Password"),
            const SizedBox(
              height: 20,
            ),
            InputPassword(
                passwordController: _konfirmpasswordController,
                text: "Konfirmasi Password"),
            const SizedBox(
              height: 20,
            ),
            //checkbox to agree with terms and conditions
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    'I would like to receive your newsletter and other promotional information.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: greydefault()),
                  )
                ),
              ],
            ),
            const SizedBox(
              height: 100,
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
                    context.read<IsloginBloc>().add(UserLoginEvent());
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TabbarComponent()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: Text(
                "Sudah punya akun? Login",
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
