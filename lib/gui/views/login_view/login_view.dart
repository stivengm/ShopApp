import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/gui/views/login_view/form_login.dart';
import 'package:shop_app/gui/widgets/primary_button.dart';
import 'package:shop_app/gui/widgets/text_app.dart';

class LoginView extends StatelessWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const TextApp(text: 'Inicio de sesión', color: blackColor,),
          const FormLogin(),
          PrimaryButton(
            text: 'Siguiente',
            onPressed: () {}
          ),
          RichText(
            text: const TextSpan(
              text: 'No tienes una cuenta?',
              style: TextStyle(
                color: blackColor
              ),
              children: [
                TextSpan(
                  text: ' Regístrate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  )
                )
              ]
            )
          )
        ],
      ),
    );
  }

}