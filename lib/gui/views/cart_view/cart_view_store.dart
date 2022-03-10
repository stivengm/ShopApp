
class StoreCartView {

  List cart = [
    {
      'image': 'imagen',
      'name': 'Camisa',
      'price': 250,
      'cantidad': 1,
      'precioTotal': 250
    }
  ];

  static final StoreCartView _singleton = StoreCartView._();
  factory StoreCartView() => _singleton;
  StoreCartView._();

}