import 'dart:io';

void main() {
  final listaDeCompras = [];
  var isRunning = true;

  while (isRunning) {
    // print("\x1B[2J\x1B[0;0H");
    print('=== BEM-VINDO A LISTA DE COMPRAS (${listaDeCompras.length}) ===');

    String opcao = opcoesCompras();
    if (opcao == '4') {
      print("\x1B[2J\x1B[0;0H");
      print('=== FIM DO PROGRAMA ===');
      isRunning = false;
    } else if (opcao == '3') {
      print("\x1B[2J\x1B[0;0H");
      if (listaDeCompras.length > 0) {
        listaDeCompras.clear();
        print('Os itens foram apagados');
      } else {
        print('Nenhum item foi adicionado ainda.');
      }
    } else if (opcao == '2') {
      print("\x1B[2J\x1B[0;0H");
      if (listaDeCompras.length > 0) {
        mostrarLista(listaDeCompras);
      } else {
        print("\x1B[2J\x1B[0;0H");
        print('Lista vazia! Nenhum item foi adicionado.');
      }
    } else if (opcao == '1') {
      print("\x1B[2J\x1B[0;0H");
      print('Informe o produto: ');
      String? item = stdin.readLineSync();
      if (item != null) {
        listaDeCompras.add(item);
      }
    } else {
      print("\x1B[2J\x1B[0;0H");
      print('=== OPÇÃO INVÁLIDA ===');
    }
  }
}

String opcoesCompras() {
  print('1 - ADICIONAR UM PRODUTO');
  print('2 - MOSTRAR PRODUTOS ADICIONADOS');
  print('3 - REMOVER TODOS OS ITENS DA LISTA');
  print('4 - SAIR DO PROGRAMA');
  String? opcao = stdin.readLineSync();
  return opcao!;
}

mostrarLista(listaDeCompras) {
  print("\x1B[2J\x1B[0;0H");
  print('=== LISTA COMPLETA ===');
  for (var i = 0; i < listaDeCompras.length; i++) {
    print('${listaDeCompras[i]}');
  }
  print('=== FIM DA LISTA ===');
}
