import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home.svg', color: Colors.grey),
            label: 'Home',
            activeIcon: SvgPicture.asset('assets/icons/home_selected.svg', color: primaryColor)
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/favorite.svg', color: Colors.grey),
            label: 'Favoritos',
            activeIcon: SvgPicture.asset('assets/icons/favorite_selected.svg', color: primaryColor),
          )
        ],
      ),
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