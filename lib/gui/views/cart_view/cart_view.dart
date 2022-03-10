import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/gui/widgets/primary_button.dart';

class CartView extends StatelessWidget {
  const CartView({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: bgColor,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Carrito de compras', style: Theme.of(context).textTheme.headline5),
            leading: IconButton(
              icon: SvgPicture.asset("assets/icons/menu.svg"),
              onPressed: () => ZoomDrawer.of(context)!.toggle(),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    _itemCart(),
                    _itemCart(),
                    _itemCart(),
                    _itemCart(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Subtotal: '),
                    Text('\$ 750 ', style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w700, color: blackColor),),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: size.width * .8,
                child: PrimaryButton(
                  text: 'Confirmar',
                  onPressed: () {}
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemCart() {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10.0)
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: [
          const Text('Imagen'),
          Expanded(
            child: Row(
              children: [
                const Text('Name product'),
                _actions()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _actions() {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.add
          ),
          onPressed: () {}, 
        ),
        const Text('1'),
        IconButton(
          icon: const Icon(
            Icons.remove
          ),
          onPressed: () {}, 
        ),
      ],
    );
  }

}