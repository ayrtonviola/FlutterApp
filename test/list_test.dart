import 'package:flutter_test/flutter_test.dart';

// Lista inicial de inteiros usada para testar os métodos abaixo
List<int> numeros = [1, 2, 3];

void main() {
  // Teste de adição simples de um elemento ao final da lista
  test('Adicionar elemento', () {
    numeros.add(4);
    expect(numeros.contains(4), isTrue);
  });

  // Teste de adição de múltiplos elementos usando addAll
  test('Adicionar outra lista', () {
    numeros.addAll([5, 6]);
    expect(numeros.contains(5), isTrue);
    expect(numeros.contains(6), isTrue);
  });

  // Insere um elemento em um índice específico (neste caso, na primeira posição)
  test('Adicionar na posição', () {
    numeros.insert(0, 0);
    expect(numeros.indexOf(0), 0);
  });

  // Remove a primeira ocorrência do valor especificado
  test('Remover elemento', () {
    numeros.remove(2);
    expect(numeros.contains(2), isFalse);
  });

  // Remove o elemento localizado em um índice específico
  test('Remover na posição', () {
    numeros.removeAt(0);
    expect(numeros.contains(0), isFalse);
  });

  // Verifica a quantidade total de elementos presentes na lista
  test('Testar tamanho', () {
    expect(numeros.length, 5);
  });

  // Valida se a lista está vazia ou contém elementos
  test('Testar vazio e não vazio', () {
    expect(numeros.isEmpty, isFalse);
    expect(numeros.isNotEmpty, isTrue);
  });

  // Testa a inversão de ordem e a ordenação alfanumérica/numérica com sort()
  test('Testar ordenação', () {
    expect(numeros.reversed.toList(), [6, 5, 4, 3, 1]);
    expect(numeros, [1, 3, 4, 5, 6]);
    numeros = numeros.reversed.toList();
    expect(numeros, [6, 5, 4, 3, 1]);
    numeros.sort();
    expect(numeros, [1, 3, 4, 5, 6]);
  });

  // Utiliza estruturas de repetição (for), mapeamento (map) e filtro (where)
  test('Testar percorrer lista', () {
    int soma = 0;
    for (int numero in numeros) {
      soma += numero;
    }
    expect(soma, 19);

    numeros = numeros.map((numero) => numero * 2).toList();
    expect(numeros, [2, 6, 8, 10, 12]);

    numeros = numeros.where((numero) => numero % 3 == 0).toList();
    expect(numeros, [6, 12]);
  });
}
