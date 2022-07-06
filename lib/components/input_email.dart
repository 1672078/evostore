import 'package:flutter/material.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({
    Key? key,
    required this.label,
    required this.controller,
  }) : super(key: key);

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // height: 40,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty || !value.contains("@")) {
            return 'Please enter right email';
          }
          return null;
        },
        textAlignVertical: TextAlignVertical.top,
        //type email
        keyboardType: TextInputType.emailAddress,
        //must be filled

        controller: controller,
        decoration: InputDecoration(
          //shape
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          helperMaxLines: 1,
          // isCollapsed: true,
          // isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          fillColor: Colors.white,
          filled: true,
          // border: const OutlineInputBorder(),
          labelText: label,
          floatingLabelStyle:
              Theme.of(context).textTheme.caption!.copyWith(fontSize: 0),
          labelStyle: //theme context
              Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.black54),
        ),
      ),
    );
  }
}
