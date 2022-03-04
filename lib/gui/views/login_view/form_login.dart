import 'package:flutter/material.dart';

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
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Contraseña'
            ),
          ),
        ],
      ),
    );
  }
}