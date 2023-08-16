import 'package:flutter/material.dart';
import 'package:projeto_desafio_flutter/infrastructure/data.dart';
import '../models/produto.dart';

class Produtos with ChangeNotifier {
  final List<Produto> _items = [...Mock().produtos];

  List<Produto> get all {
    return [..._items];
  }

  List<Produto> sortList() {
    List<Produto> listClients = [..._items];
    List<Produto> ordenado = listClients.toList();
    ordenado.sort((a, b) => a.nome.compareTo(b.nome));
    return ordenado;
  }

  int get count {
    return _items.length;
  }

  Produto byIndex(int i) {
    return sortList().elementAt(i);
  }

  void put(Produto cliente) {
    if (_items.contains(cliente)) {
      _items.remove(cliente);
      _items.add(Produto(id: cliente.id, nome: cliente.nome, valor: cliente.valor));
    } else {
      _items.add(cliente);
    }
    notifyListeners();
  }

  void remove(Produto cliente) {
    _items.remove(cliente);
    notifyListeners();
  }
}




























































































































































































































































































































































































































// class Produtos with ChangeNotifier {
//   Map<String, Produto> _items = {};
// }

// class Cliente with ChangeNotifier {
//   Map<String, Cliente> _items = {};
// }

// class Pedidos with ChangeNotifier {
//   Map<String, Pedido> _items = {};
// }