import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({super.key});

  @override
  State<PasswordWidget> createState() => _PasswordState();
}

class _PasswordState extends State<PasswordWidget> {
  bool enable = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width - 40,
        height: 60,
        child: TextField(
            obscureText: enable,
            style: const TextStyle(),
            decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: const Icon(
                  Icons.lock_outline_rounded,
                ),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        if (enable) {
                          enable = false;
                        } else {
                          enable = true;
                        }
                      });
                    },
                    icon: Icon(
                        enable ? Icons.visibility : Icons.visibility_off)))));
  }
}
