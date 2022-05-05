import 'package:devdojo/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controlleNome = TextEditingController();
  TextEditingController controllerAltura = TextEditingController();
  TextEditingController controllerPeso = TextEditingController();

  Controller _controller = new Controller();

  void _clear() {
    _controller.resultado = 0;
    controlleNome.text = "";
    controllerAltura.text = "";
    controllerPeso.text = "";
  }

  _body() {
    return Observer(
        builder: (_) => Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("lib/assets/images/imc.png"),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: TextField(
                        controller: controlleNome,
                        onChanged: _controller.setNome,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Nome",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: TextField(
                        controller: controllerAltura,
                        onChanged: _controller.setAltura,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Altura", border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: TextField(
                        controller: controllerPeso,
                        onChanged: _controller.setPeso,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Peso", border: OutlineInputBorder()),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _controller.calculaImc();
                          if (_controller.resultado != 0) {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Text("Olá!"),
                                      content: Text(_controller.msg),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              _clear();
                                              Navigator.pop(context);
                                            },
                                            child: Text("Ok"))
                                      ],
                                    ));
                          }
                        },
                        child: Text("Calcular"))
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicativo IMC"),
        centerTitle: true,
        backgroundColor: Color(0xFF2c6288),
      ),
      body: _body(),
    );
  }
}
