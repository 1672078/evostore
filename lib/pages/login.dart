import 'package:evo_store/components/input_email.dart';
import 'package:evo_store/components/input_password.dart';
import 'package:evo_store/constanta.dart';
import 'package:evo_store/pages/forgot_password.dart';
import 'package:evo_store/pages/tabbar_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/Islogin/islogin_bloc.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
              'Log In',
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
                    "Log In",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgotPassword()),
                );
              },
              child: Text(
                "Forgot your password?",
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
