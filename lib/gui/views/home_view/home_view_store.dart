
class StoreHomeView {
  String titulo = 'SUPER astro';
  String valTextManual = 'Máximo 4 líneas de apuestas por tiquete de mínimo \$100 y máximo \$10.000 / El mínimo por tiquete es de \$500';
  String valTextAuto = 'Valor mínimo \$500 y valor máximo \$10.000';
  int valortotalApuesta = 0;

  static final StoreHomeView _singleton = StoreHomeView._();
  factory StoreHomeView() => _singleton;
  StoreHomeView._();

}