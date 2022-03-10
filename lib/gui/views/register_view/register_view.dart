import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({ Key? key }) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
      
    );
  }
}