import 'package:cultural_tte_front/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:cultural_tte_front/components/buttons/mainButton.dart';
import 'package:cultural_tte_front/components/forms/loginForm.dart';
import 'package:cultural_tte_front/helper/preferences.dart';
import 'package:get/get.dart';

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController _login = TextEditingController();
  TextEditingController _pass = TextEditingController();
  List list = ['Portugues (Brasil) - pt_BR', 'English (US)'];
  var _value;
  bool boolean = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      width: double.infinity,
      child: Column(
        children: [
          Visibility(
            visible: boolean,
            child: Container(
              width: double.infinity,
              height: 32.0,
              color: buttonColor,
              alignment: Alignment.center,
              child: Text(
                'error_session'.tr,
                style: TextStyle(color: white, fontSize: 12.0),
              ),
            ),
          ),
          SizedBox(height: 80.0),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.35,
            child: ListView(
              children: [
                Image.asset(
                  "assets/login.png",
                  height: 200.0,
                  width: 169.0,
                ),
                Visibility(
                  visible: boolean,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'error_login_msg'.tr,
                      style: TextStyle(fontSize: 12.0, color: secondColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 40.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 4,
                            child: Text('language'.tr,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold))),
                        Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40.0,
                                padding: const EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border:
                                        Border.all(color: Color(0xFFAEEADA))),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    value: _value,
                                    items: list.map((item) {
                                      return DropdownMenuItem(
                                        child: Text('$item'),
                                        value: item,
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                        if (value == 'English (US)') {
                                          Get.updateLocale(Locale('en', 'US'));
                                        } else {
                                          Get.updateLocale(Locale('pt', 'BR'));
                                        }
                                      });
                                    },
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                    icon: Icon(Icons.arrow_drop_down_circle),
                                    iconEnabledColor: Color(0xFFAEEADA),
                                    isExpanded: false,
                                    dropdownColor: white,
                                  ),
                                ),
                              ),
                            ))
                      ]),
                ),
                LoginForm(_login, 'login'.tr, false),
                LoginForm(_pass, 'password'.tr, true),
                MainButton('enter'.tr.toUpperCase(), () {
                  if (_login.text.isEmpty || _pass.text.isEmpty) {
                    setState(() {
                      boolean = true;
                    });
                  } else {
                    rota(context, HomePage());
                  }
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
