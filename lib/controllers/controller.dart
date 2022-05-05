import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  String nome = "";
  @observable
  String altura = "";
  @observable
  String peso = "";
  @observable
  String msg = "";
  @observable
  double resultado = 0;

  @computed
  String get nomeUser => nome;
  @computed
  String get alturaUser => altura;
  @computed
  String get pesoUser => peso;
  @computed
  double get resultadoUser => resultado;

  @action
  void setNome(newNome) => nome = newNome;
  @action
  void setAltura(newAltura) => altura = newAltura;
  @action
  void setPeso(newPeso) => peso = newPeso;
  @action
  void calculaImc(){
    final imc = double.parse(peso) / (double.parse(altura) * double.parse(altura));
    resultado = imc;
    resultado >= 18.5 && resultado <= 24.9 ? msg = "$nome, seu IMC é ${resultado.toStringAsFixed(2)}\nIMC: NORMAL" :
    resultado >= 25.0 && resultado <= 29.9 ? msg = "$nome, seu IMC é ${resultado.toStringAsFixed(2)}\nIMC: SOBREPESO" :
    resultado > 30.0 && resultado <= 39.9 ? msg = "$nome, seu IMC é ${resultado.toStringAsFixed(2)}\nIMC: OBESIDADE" : 
    resultado > 40.0 ? msg = "$nome, seu IMC é ${resultado.toStringAsFixed(2)}\nIMC: OBESIDADE GRAVE" : "";
  }
}
