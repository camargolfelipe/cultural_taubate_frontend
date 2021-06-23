import 'package:flutter/material.dart';
import 'package:cultural_tte_front/helper/preferences.dart';

class MainButton extends StatelessWidget {
  String label;
  void Function()? function;
  MainButton(this.label, this.function);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        style: ButtonStyle(),
        onPressed: function,
        child: Container(
          width: double.infinity,
          child: Card(
            color: buttonColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                label,
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: white, fontSize: 16.0, letterSpacing: 1.5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
