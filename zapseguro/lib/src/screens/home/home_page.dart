import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ZapSeguro')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.amber),
              child: Center(
                child: const Text(
                  'Visualizar Mensagens suspeitas',
                  style: TextStyle(fontSize: 26),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                showMessage();
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.red),
                child: Center(
                  child: const Text(
                    'Escolher Responsável',
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                print("Teste");
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(
                  child: const Text(
                    'Solicitar Ajuda',
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool?> showMessage() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(18),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Nenhuma nofiticação recebida',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close_rounded),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
