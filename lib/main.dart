import 'package:flutter/material.dart';

import 'components/item_list.dart';
import 'model/transferencia.dart';
import 'screens/formulario_transferencia.dart';

void main() => runApp(const ButebankApp());

class ButebankApp extends StatelessWidget {
  const ButebankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: FormularioTransferencia(),
    ));
  }
}

class ListaTransferencias extends StatelessWidget {
  const ListaTransferencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
      ),
      body: Column(
        children: <Widget>[
          ItemListTransferencia(
            transferencia: Transferencia(100.0, 1000),
          ),
          ItemListTransferencia(
            transferencia: Transferencia(200.0, 2000),
          ),
          ItemListTransferencia(
            transferencia: Transferencia(300.0, 1000),
            onTap: () => {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
