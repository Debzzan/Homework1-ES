# Homework 01 — Engenharia de Software

Exercícios em **Ruby** desenvolvidos por **Daniel Dezan Baby** para o Homework 01 de Engenharia de Software.

O projeto explora manipulação de strings, coleções, recursão, orientação a objetos e metaprogramação, no contexto de um estudo sobre o uso de modelos de linguagem (LLMs) como apoio ao aprendizado e à análise de código.

## Conteúdo

As soluções estão organizadas por parte do trabalho:

| Parte | Arquivo | Descrição |
| --- | --- | --- |
| 1.a | [`hw1.1.a.rb`](hw1.1.a.rb) | Verificação de palíndromos, com normalização do texto e tratamento de `nil`. |
| 1.b | [`hw1.1.b.rb`](hw1.1.b.rb) | Contagem da frequência de palavras utilizando um hash. |
| 2.a | [`hw1.2.a.rb`](hw1.2.a.rb) | Determinação do vencedor de uma partida de pedra, papel e tesoura, com validação dos jogadores e das estratégias. |
| 2.b | [`hw1.2.b.rb`](hw1.2.b.rb) | Determinação do vencedor de um torneio por meio de recursão. |
| 3 | [`hw1.3.rb`](hw1.3.rb) | Agrupamento de anagramas com `group_by` e ordenação de caracteres. |
| 4.a | [`hw1.4.a.rb`](hw1.4.a.rb) | Classe `Dessert`, com atributos e métodos para avaliar sobremesas. |
| 4.b | [`hw1.4.b.rb`](hw1.4.b.rb) | Classe `JellyBean`, explorando herança e sobrescrita de métodos. |
| 5 | [`hw1.5.rb`](hw1.5.rb) | Criação de atributos que registram o histórico de valores atribuídos. |
| 6.a | [`hw1.6.a.rb`](hw1.6.a.rb) | Extensão de `Numeric` para conversão de moedas com taxas fixas definidas no código. |
| 6.b | [`hw1.6.b.rb`](hw1.6.b.rb) | Adição do método `palindrome?` à classe `String`. |
| 6.c | [`hw1.6.c.rb`](hw1.6.c.rb) | Adição do método `palindrome?` ao módulo `Enumerable`, permitindo verificar coleções. |

## Conceitos explorados

- Manipulação de strings e expressões regulares.
- Arrays, hashes e operações com `Enumerable`.
- Tratamento de erros com exceções personalizadas.
- Recursão aplicada a torneios.
- Classes, atributos, herança e polimorfismo.
- Metaprogramação com `class_eval` e `method_missing`.
- Reabertura de classes e extensão de módulos do Ruby.

## Como executar

### Pré-requisitos

- Ruby instalado e disponível no terminal.
- Git para clonar o repositório.

Os exercícios utilizam recursos nativos do Ruby, sem necessidade de instalar gems externas.

### Obter o código

```bash
git clone https://github.com/Debzzan/Homework1-ES.git
cd Homework1-ES
```

### Executar os exemplos

Na raiz do repositório, execute o arquivo desejado com o interpretador Ruby:

```bash
# Verificação de palíndromos
ruby hw1.1.a.rb

# Contagem de palavras
ruby hw1.1.b.rb

# Torneio de pedra, papel e tesoura
ruby hw1.2.b.rb

# Agrupamento de anagramas
ruby hw1.3.rb

# Histórico de atributos
ruby hw1.5.rb

# Conversão de moedas
ruby hw1.6.a.rb

# Palíndromos em coleções
ruby hw1.6.c.rb
```

Vários arquivos incluem chamadas de demonstração com resultados exibidos no terminal por `puts` ou `p`. Arquivos que apenas definem classes, como `hw1.4.a.rb`, não produzem saída ao serem executados diretamente.

## Exemplos de funcionalidades

### Palíndromos

```ruby
palindrome?("A man, a plan, a canal -- Panama")
# => true

palindrome?("Abracadabra")
# => false
```

### Contagem de palavras

```ruby
count_words("Doo bee doo bee doo")
# => {"doo"=>3, "bee"=>2}
```

### Anagramas

```ruby
combine_anagrams(["cars", "racs", "scar", "four"])
# => [["cars", "racs", "scar"], ["four"]]
```

### Histórico de atributos

```ruby
class Foo
  attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2

f.bar_history
# => [nil, 1, 2]
```

Os exemplos acima pressupõem que o arquivo da respectiva implementação tenha sido carregado.

## Autor

**Daniel Dezan Baby**

[Perfil no GitHub](https://github.com/Debzzan)

## Licença

Este projeto está disponível sob a licença [MIT](LICENSE).
