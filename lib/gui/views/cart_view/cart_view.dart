import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shop_app/gui/widgets/text_app.dart';

class CartView extends StatelessWidget {
  const CartView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextApp(text: 'Cart'),
        leading: IconButton(
          icon: const Icon(
            Icons.menu
          ),
          onPressed: () => ZoomDrawer.of(context)!.toggle(),
        ),
      ),
      body: Container(),
    );
  }
}