import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/gui/widgets/text_app.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({ Key? key }) : super(key: key);

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
              hintText: 'Email',
              border: InputBorder.none
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(8.0)
              // )
            ),
          ),
          const SizedBox(height: 15.0),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Contraseña'
            ),
          ),
          const SizedBox(height: 10.0),
          const TextApp(text: 'Ha olvidado la contraseña?', color: blackColor)
        ],
      ),
    );
  }
}