import 'package:bytebank/model/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {
  const FormularioTransferencia({super.key});

  @override
  State<FormularioTransferencia> createState() =>
      _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controllerNumeroConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const inputTextStyle = TextStyle(fontSize: 16.0);
    const inputKeyboardType = TextInputType.number;
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 16),
    );

    void onConfirm() {
      final int? numeroConta = int.tryParse(_controllerNumeroConta.text);
      final double? valor = double.tryParse(_controllerValor.text);

      if (numeroConta != null && valor != null) {
        // tratar erro
        final Transferencia transferencia = Transferencia(valor, numeroConta);
        debugPrint(transferencia.toString());
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Criando Transferência'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              style: inputTextStyle,
              keyboardType: inputKeyboardType,
              decoration: const InputDecoration(
                labelText: 'Número da conta',
                hintText: '0000',
              ),
              controller: _controllerNumeroConta,
            ),
            TextField(
              style: inputTextStyle,
              keyboardType: inputKeyboardType,
              decoration: const InputDecoration(
                labelText: 'Valor',
                hintText: '0.00',
                icon: Icon(Icons.monetization_on),
              ),
              controller: _controllerValor,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: buttonStyle,
              onPressed: onConfirm,
              child: const Text('Confirmar'),
            )
          ],
        ),
      ),
    );
  }
}
