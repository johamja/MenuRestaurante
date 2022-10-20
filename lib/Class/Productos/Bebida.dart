
import '../Producto.dart';

class Bebida extends Producto{

  late bool _Temperatura;

  Bebida(super.Nombre, super.Precio, super.Descripcion,super.Imagen, this._Temperatura);

}