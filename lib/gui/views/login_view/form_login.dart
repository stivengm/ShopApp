import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/gui/widgets/primary_button.dart';
import 'package:shop_app/gui/widgets/text_app.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({ Key? key }) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            textInputAction: TextInputAction.next,
            onChanged: (value) {

            },
            decoration: const InputDecoration(
              // hintText: 'Email',
              labelText: 'Email',
              border: InputBorder.none
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(8.0)
              // )
            ),
          ),
          const SizedBox(height: 15.0),
          TextFormField(
            decoration: const InputDecoration(
              // hintText: 'Contraseña'
              labelText: 'Contraseña',
            ),
          ),
          const SizedBox(height: 10.0),
          const TextApp(text: 'Ha olvidado la contraseña?', color: blackColor),
          const SizedBox(height: 20.0),
          PrimaryButton(
            text: 'Siguiente',
            onPressed: () => Navigator.pop(context)
          ),
          const SizedBox(height: 30.0),
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