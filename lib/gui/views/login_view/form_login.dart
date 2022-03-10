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
  bool _passwordVisible = true;

  @override
  void initState() {
    _passwordVisible = true;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            textInputAction: TextInputAction.next,
            onChanged: (value) {

            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: InputBorder.none
            ),
          ),
          const SizedBox(height: 15.0),
          TextFormField(
            obscureText: _passwordVisible,
            onChanged: (value) { },
            decoration: InputDecoration(
              labelText: 'Contraseña',
              suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              )
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