import 'package:flutter/material.dart';
import 'package:masterclass_gerador_cpf/cpf/model/cpf_model.dart';


class CpfPage extends StatefulWidget {
  const CpfPage({Key? key}) : super(key: key);

  @override
  State<CpfPage> createState() => _CpfPageState();
}

class _CpfPageState extends State<CpfPage> {
  TextEditingController cpfNumero = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerador CPF'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: cpfNumero,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    cpfNumero.text = CPFModel().geraNumeros();
                  });
                },
                child: const Text('Gerar CPF'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
