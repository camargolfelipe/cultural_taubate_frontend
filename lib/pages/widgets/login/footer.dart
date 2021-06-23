import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFDDDDDD),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(8.0),
      child: Text('© Copyright 2021 - ALUNOSFATEC',
          style: TextStyle(fontSize: 12.0)),
    );
  }
}
