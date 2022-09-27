import 'package:flutter/material.dart';
import '../model/transferencia.dart';

class ItemListTransferencia extends StatelessWidget {
  final Transferencia transferencia;

  final void Function()? onTap;
  const ItemListTransferencia(
      {super.key, required this.transferencia, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(transferencia.valor.toString()),
        subtitle: Text(transferencia.numeroConta.toString()),
        onTap: onTap,
      ),
    );
  }
}
