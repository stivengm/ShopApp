import 'package:flutter/material.dart';
import 'package:shop_app/gui/widgets/primary_button.dart';


class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        PrimaryButton(
          text: 'Login',
          onPressed: () {
            Navigator.pushNamed(context, 'login');
          }
        )
      ],
    );
  }
}