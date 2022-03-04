import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/gui/widgets/text_app.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final GestureTapCallback? onPressed;
  const PrimaryButton({ Key? key, required this.text, required this.onPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        child: TextApp(text: text, fontSize: 20.0, fontWeight: FontWeight.bold),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(12.0)),
          foregroundColor: MaterialStateProperty.all<Color>(whiteColor),
          backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(color: primaryColor)
            )
          )
        ),
        onPressed: onPressed,
      ),
    );
  }
}