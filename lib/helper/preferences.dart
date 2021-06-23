import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

rota(context, widget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

const api = "http://18.228.251.144:5000/graphql";

const mainColor = Color(0xFF534F64);
const secondColor = Color(0xFFE6675A);
const buttonColor = Color(0xFFF08377);

const blue = Color(0xFF2196F3);
const red = Color(0xFFF44336);
const yellow = Color(0xFFFFEB3B);
const green = Color(0xFF81C784);
const brown = Color(0xFF795548);
const grey = Color(0xFF9E9E9E);
const white = Color(0xFFFFFFFF);
const customWhite = Color(0xFFF5F5F5);
const black = Color(0xFF000000);
const orange = Color(0xFFFF9800);
const pink = Color(0xFFE91E63);
const purple = Color(0xFF9c27b0);
const bluegrey = Color(0xFF607D8B);
