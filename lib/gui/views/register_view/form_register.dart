import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/gui/widgets/primary_button.dart';

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
            autocorrect: false,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: const TextStyle(
                color: primaryColor
              ),
              filled: true,
              fillColor: whiteColor,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: whiteColor
                ),
                borderRadius: BorderRadius.circular(10.0)
              )
            ),
          ),
          const SizedBox(height: 15.0),
          TextFormField(
            obscureText: _passwordVisible,
            onChanged: (value) { },
            autocorrect: false,
            decoration: InputDecoration(
              labelText: 'Contraseña',
              labelStyle: const TextStyle(
                color: primaryColor
              ),
              filled: true,
              fillColor: whiteColor,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: whiteColor
                ),
                borderRadius: BorderRadius.circular(10.0)
              ),
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
          const SizedBox(height: 30.0),
          PrimaryButton(
            text: 'Siguiente',
            onPressed: () => Navigator.pop(context)
          ),
          const SizedBox(height: 30.0),
          RichText(
            text: TextSpan(
              text: 'Ya tienes una cuenta?',
              style: const TextStyle(
                color: blackColor
              ),
              children: [
                TextSpan(
                  text: ' Inicia sesión',
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
      Navigator.pushReplacementNamed(context, 'login');
    };

  }
}