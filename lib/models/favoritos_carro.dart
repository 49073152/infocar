import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:infocar/models/carro.dart';

class FavoritosCarros extends ChangeNotifier {
  final List<Carro> carros = [];

  UnmodifiableByteBufferView<Carro> get carros =>
      UnmodifiableByteDataView(_carros);


    void add(Carro carro)
}
