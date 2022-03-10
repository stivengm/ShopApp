import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shop_app/gui/widgets/text_app.dart';

class CartView extends StatelessWidget {
  const CartView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de compras', style: Theme.of(context).textTheme.headline5),
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
        ),
      ),
      body: Container(),
    );
  }
}