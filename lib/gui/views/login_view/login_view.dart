import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/gui/views/login_view/form_login.dart';
import 'package:shop_app/gui/widgets/primary_button.dart';
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
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/arrow_left.svg'),
          iconSize: 35.0,
          color: greyColor,
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: bgColor,
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10.0),
      decoration: const BoxDecoration(
        color: bgColor
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const TextApp(text: 'Inicio de sesión', color: blackColor,),
          const FormLogin(),
          PrimaryButton(
            text: 'Siguiente',
            onPressed: () => Navigator.pop(context)
          ),
          RichText(
            text: TextSpan(
              text: 'No tienes una cuenta?',
              style: const TextStyle(
                color: blackColor
              ),
              children: [
                TextSpan(
                  text: ' Regístrate',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  recognizer: _registro()
                )
              ]
            )
          )
        ],
      ),
    );
  }

  TapGestureRecognizer _registro() {

    return TapGestureRecognizer()..onTap = () {
      Navigator.pushNamed(context, 'register');
    };

  }

}