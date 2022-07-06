import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  final TextEditingController passwordController;
  final String text;

  const InputPassword({
    Key? key,
    required this.passwordController,
    required this.text,
  }) : super(key: key);

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.center,
      // height: 40,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textAlignVertical: TextAlignVertical.top,
        controller: widget.passwordController,
        obscureText: _obscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter right password';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          labelText: widget.text,
          floatingLabelStyle: const TextStyle(fontSize: 0),
          labelStyle: //theme context
              Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.black54),
          suffixIcon: IconButton(
            icon: _obscureText
                ? const Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  )
                : const Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}
