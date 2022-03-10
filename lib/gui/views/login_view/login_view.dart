import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/gui/views/login_view/form_login.dart';
import 'package:shop_app/gui/widgets/curved_widget.dart';
import 'package:shop_app/gui/widgets/text_app.dart';

class LoginView extends StatefulWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SizedBox(
        height: double.infinity,
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                CurvedWidget(
                  curvedDistance: 80.0,
                  curvedHeight: 80.0,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 100.0, left: 50.0),
                    height: 300.0,
                    color: primaryColor,
                    child: const TextApp(text: 'Iniciar sesión', fontSize: 40.0),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 300.0, right: 28.0, left: 28.0),
                  child: const FormLogin(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}