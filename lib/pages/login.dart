import 'package:flutter/material.dart';
import 'package:cultural_tte_front/pages/widgets/login/body.dart';
import 'package:cultural_tte_front/pages/widgets/login/footer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 20, child: LoginBody()),
          Expanded(flex: 1, child: LoginFooter())
        ],
      ),
    );
  }
}
