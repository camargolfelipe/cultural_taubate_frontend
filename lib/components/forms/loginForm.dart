import 'package:flutter/material.dart';
import 'package:cultural_tte_front/helper/preferences.dart';

class LoginForm extends StatelessWidget {
  TextEditingController _controller;
  String _label;
  bool _obscured;
  LoginForm(this._controller, this._label, this._obscured);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          shadowColor: Colors.transparent,
          child: TextFormField(
            controller: _controller,
            obscureText: _obscured,
            decoration: InputDecoration(
              prefixIcon: _obscured
                  ? Icon(
                      Icons.password_rounded,
                      color: grey,
                    )
                  : Icon(
                      Icons.person,
                      color: grey,
                    ),
              labelText: _label,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: grey.withOpacity(0.6)),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          )),
    );
  }
}
