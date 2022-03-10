import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/gui/widgets/primary_button.dart';
import 'package:shop_app/gui/widgets/text_app.dart';


class MenuItemModel {
  final String title;
  final IconData icon;
  const MenuItemModel(this.title, this.icon);
}

class MenuItems {
  static const home = MenuItemModel('home', Icons.home);
  static const cart = MenuItemModel('cart', Icons.card_travel);
  static const test1 = MenuItemModel('test1', Icons.home);
  static const test2 = MenuItemModel('test1w', Icons.home);


  static const all = <MenuItemModel>[
    home,
    cart,
    test1,
    test2
  ];

}

class MenuDrawerZoomView extends StatelessWidget {
  final MenuItemModel currentItem;
  final ValueChanged<MenuItemModel> onSelectedItem;

  const MenuDrawerZoomView({ 
    Key? key,
    required this.currentItem,
    required this.onSelectedItem
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF4B5669),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          width: size.width * .5,
          child: Column(
            children: [
              const Text("Hollaaaa mundoooo!!"),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      ...MenuItems.all.map(buildMenuItem).toList()
                    ],
                  ),
                ),
              ),
              PrimaryButton(text: 'Cerrar sesión', onPressed: () {
                ZoomDrawer.of(context)!.close();
              })
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItemModel item) {
    return ListTileTheme(
      selectedColor: Colors.white,
      child: ListTile(
        selectedColor: blackColor,
        selected: currentItem == item,
        minLeadingWidth: 20,
        leading: Icon(item.icon),
        title: TextApp(text: item.title,),
        onTap: () => onSelectedItem(item),
      ),
    );
  }

}