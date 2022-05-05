// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  Computed<String>? _$nomeUserComputed;

  @override
  String get nomeUser =>
      (_$nomeUserComputed ??= Computed<String>(() => super.nomeUser,
              name: 'ControllerBase.nomeUser'))
          .value;
  Computed<String>? _$alturaUserComputed;

  @override
  String get alturaUser =>
      (_$alturaUserComputed ??= Computed<String>(() => super.alturaUser,
              name: 'ControllerBase.alturaUser'))
          .value;
  Computed<String>? _$pesoUserComputed;

  @override
  String get pesoUser =>
      (_$pesoUserComputed ??= Computed<String>(() => super.pesoUser,
              name: 'ControllerBase.pesoUser'))
          .value;
  Computed<double>? _$resultadoUserComputed;

  @override
  double get resultadoUser =>
      (_$resultadoUserComputed ??= Computed<double>(() => super.resultadoUser,
              name: 'ControllerBase.resultadoUser'))
          .value;

  late final _$nomeAtom = Atom(name: 'ControllerBase.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$alturaAtom =
      Atom(name: 'ControllerBase.altura', context: context);

  @override
  String get altura {
    _$alturaAtom.reportRead();
    return super.altura;
  }

  @override
  set altura(String value) {
    _$alturaAtom.reportWrite(value, super.altura, () {
      super.altura = value;
    });
  }

  late final _$pesoAtom = Atom(name: 'ControllerBase.peso', context: context);

  @override
  String get peso {
    _$pesoAtom.reportRead();
    return super.peso;
  }

  @override
  set peso(String value) {
    _$pesoAtom.reportWrite(value, super.peso, () {
      super.peso = value;
    });
  }

  late final _$msgAtom = Atom(name: 'ControllerBase.msg', context: context);

  @override
  String get msg {
    _$msgAtom.reportRead();
    return super.msg;
  }

  @override
  set msg(String value) {
    _$msgAtom.reportWrite(value, super.msg, () {
      super.msg = value;
    });
  }

  late final _$resultadoAtom =
      Atom(name: 'ControllerBase.resultado', context: context);

  @override
  double get resultado {
    _$resultadoAtom.reportRead();
    return super.resultado;
  }

  @override
  set resultado(double value) {
    _$resultadoAtom.reportWrite(value, super.resultado, () {
      super.resultado = value;
    });
  }

  late final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase', context: context);

  @override
  void setNome(dynamic newNome) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setNome');
    try {
      return super.setNome(newNome);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAltura(dynamic newAltura) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setAltura');
    try {
      return super.setAltura(newAltura);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPeso(dynamic newPeso) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.setPeso');
    try {
      return super.setPeso(newPeso);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calculaImc() {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.calculaImc');
    try {
      return super.calculaImc();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
altura: ${altura},
peso: ${peso},
msg: ${msg},
resultado: ${resultado},
nomeUser: ${nomeUser},
alturaUser: ${alturaUser},
pesoUser: ${pesoUser},
resultadoUser: ${resultadoUser}
    ''';
  }
}
