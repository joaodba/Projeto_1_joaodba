
# Programação Python



**ATALHOS**

* CTRL + S = Salva o script
* CTRL + F = Pesquisa ou substitui informação dentro da consulta ou todas as consutlas abertas
* CTRL + R = Remove ou exibe janela de consultaSELECT =  Realiza uma consulta na base de dados com retorno.



O que é Python?
Python é uma linguagem de programação popular. Foi criado por Guido van Rossum e lançado em 1991.

É usado para:

desenvolvimento web (lado do servidor),
desenvolvimento de software,
matemática,
script do sistema.


# Começando a programar em Python


Executar sintaxe do Python
A sintaxe do Python pode ser executada escrevendo diretamente na linha de comando:

print("Hello, World!")
Hello, Word!

Recuo Python
O recuo refere-se aos espaços no início de uma linha de código.

Onde em outras linguagens de programação o recuo no código é apenas para legibilidade, o recuo em Python é muito importante.

Python usa recuo para indicar um bloco de código.

Exemplo
if 5 > 2:
  print("Five is greater than two!")

if 5 > 2:
 print("Five is greater than two!") 
if 5 > 2:
        print("Five is greater than two!") 


Variáveis Python
Em Python, as variáveis são criadas quando você atribui um valor a ela:

Exemplo
Variáveis em Python:

x = 5
y = "Hello, World!"

Comentários
O Python tem capacidade de comentários para fins de documentação no código.

Os comentários começam com um # e o Python renderizará o restante da linha como um comentário:

Exemplo
Comentários em Python:

#This is a comment.
print("Hello, World!")

Os comentários podem ser colocados no final de uma linha e o Python ignorará o resto da linha:

Exemplo
print("Hello, World!") #This is a comment.

Um comentário não precisa ser um texto que explique o código, ele também pode ser usado para impedir que o Python execute o código:

Exemplo
#print("Hello, World!")
print("Cheers, Mate!")


Criando variáveis
Python não tem comando para declarar uma variável.

Uma variável é criada no momento em que você atribui um valor a ela.

Exemplo
x = 5
y = "John"
print(x)
print(y)


As variáveis não precisam ser declaradas com nenhum tipo específico e podem até mudar de tipo depois de terem sido definidas.

Exemplo
x = 4       # x is of type int
x = "Sally" # x is now of type str
print(x)

Fundição
Se você deseja especificar o tipo de dados de uma variável, isso pode ser feito com conversão.

Exemplo
x = str(3)    # x will be '3'
y = int(3)    # y will be 3
z = float(3)  # z will be 3.0

Obter o tipo
Você pode obter o tipo de dados de uma variável com a type()função.

Exemplo
x = 5
y = "John"
print(type(x))
print(type(y))

Citações simples ou duplas?
Variáveis de string podem ser declaradas usando aspas simples ou duplas:

Exemplo
x = "John"
# is the same as
x = 'John'

Maiúsculas e minúsculas
Os nomes de variáveis diferenciam maiúsculas de minúsculas.

Exemplo
Isso criará duas variáveis:

a = 4
A = "Sally"
#A will not overwrite a

Nomes de Variáveis
Uma variável pode ter um nome curto (como x e y) ou um nome mais descritivo (age, carname, total_volume). Regras para variáveis Python:
Um nome de variável deve começar com uma letra ou o caractere sublinhado
Um nome de variável não pode começar com um número
Um nome de variável pode conter apenas caracteres alfanuméricos e sublinhados (Az, 0-9 e _ )
Os nomes das variáveis diferenciam maiúsculas de minúsculas (idade, idade e IDADE são três variáveis diferentes)
Exemplo
Nomes de variáveis legais:

myvar = "John"
my_var = "John"
_my_var = "John"
myVar = "John"
MYVAR = "John"
myvar2 = "John"


Nomes de variáveis de várias palavras
Nomes de variáveis com mais de uma palavra podem ser difíceis de ler.

Existem várias técnicas que você pode usar para torná-los mais legíveis:

Caixa de camelo
Cada palavra, exceto a primeira, começa com letra maiúscula:

myVariableName = "John"

Caso Pascal
Cada palavra começa com uma letra maiúscula:

MyVariableName = "John"

Caso da Cobra
Cada palavra é separada por um caractere de sublinhado:

my_variable_name = "John"

Muitos valores para múltiplas variáveis
Python permite atribuir valores a várias variáveis em uma linha:

Exemplo
x, y, z = "Orange", "Banana", "Cherry"
print(x)
print(y)
print(z)

Um valor para várias variáveis
E você pode atribuir o mesmo valor a várias variáveis em uma linha:

Exemplo
x = y = z = "Orange"
print(x)
print(y)
print(z)

Descompactar uma coleção
Se você tem uma coleção de valores em uma lista, tupla etc. Python permite que você extraia os valores em variáveis. Isso é chamado de descompactação .

Exemplo
Descompacte uma lista:

fruits = ["apple", "banana", "cherry"]
x, y, z = fruits
print(x)
print(y)
print(z)

Variáveis de saída
A função Python print()é frequentemente usada para gerar variáveis.

Exemplo
x = "Python is awesome"
print(x)

Na print()função, você gera várias variáveis, separadas por uma vírgula:

Exemplo
x = "Python"
y = "is"
z = "awesome"
print(x, y, z)
Você também pode usar o + operador para gerar várias variáveis:

Exemplo
x = "Python "
y = "is "
z = "awesome"
print(x + y + z)
Observe o caractere de espaço após "Python "e "is ", sem eles o resultado seria "Pythonisawesome".

Para números, o + caractere funciona como um operador matemático:

Exemplo
x = 5
y = 10
print(x + y)

Na print()função, quando você tenta combinar uma string e um número com o + operador, o Python lhe dará um erro:

Exemplo
x = 5
y = "John"
print(x + y)

A melhor maneira de gerar várias variáveis na print()função é separá-las com vírgulas, que até suportam diferentes tipos de dados:

Exemplo
x = 5
y = "John"
print(x, y)


Variáveis globais
Variáveis criadas fora de uma função (como em todos os exemplos acima) são conhecidas como variáveis globais.

As variáveis globais podem ser usadas por todos, tanto dentro das funções quanto fora delas.

Exemplo
Crie uma variável fora de uma função e use-a dentro da função

x = "awesome"

def myfunc():
  print("Python is " + x)

myfunc()
Se você criar uma variável com o mesmo nome dentro de uma função, essa variável será local e só poderá ser usada dentro da função. A variável global com o mesmo nome permanecerá como estava, global e com o valor original.

Exemplo
Crie uma variável dentro de uma função, com o mesmo nome da variável global

x = "awesome"

def myfunc():
  x = "fantastic"
  print("Python is " + x)

myfunc()

print("Python is " + x)

A palavra-chave global

Normalmente, quando você cria uma variável dentro de uma função, essa variável é local e só pode ser usada dentro dessa função.

Para criar uma variável global dentro de uma função, você pode usar a palavra- globalchave.

Exemplo

Se você usar a palavra- globalchave, a variável pertence ao escopo global:

def myfunc():
  global x
  x = "fantastic"

myfunc()

print("Python is " + x)

Além disso, use a palavra- globalchave se quiser alterar uma variável global dentro de uma função.

Exemplo

Para alterar o valor de uma variável global dentro de uma função, consulte a variável usando a globalpalavra-chave:

x = "awesome"

def myfunc():
  global x
  x = "fantastic"

myfunc()

print("Python is " + x)


Tipos de dados integrados

Na programação, o tipo de dados é um conceito importante.

Variáveis podem armazenar dados de diferentes tipos, e diferentes tipos podem fazer coisas diferentes.

O Python tem os seguintes tipos de dados integrados por padrão, nestas categorias:

Tipo de texto:  str
Tipos Numéricos:  int, float, complex
Tipos de sequência: list, tuple, range
Tipo de mapeamento: dict
Tipos de conjunto:  set,frozenset
Tipo booleano:  bool
Tipos binários: bytes, bytearray, memoryview
Nenhum Tipo:  NoneType

Obtendo o tipo de dados

Você pode obter o tipo de dados de qualquer objeto usando a type()função:

Exemplo
Imprima o tipo de dados da variável x:

x = 5
print(type(x))


Configurando o tipo de dados

Em Python, o tipo de dados é definido quando você atribui um valor a uma variável:

Example

x = "Hello World" str 
x = 20  int 
x = 20.5  float 
x = 1j  complex 
x = ["apple", "banana", "cherry"] list  
x = ("apple", "banana", "cherry") tuple 
x = range(6)  range 
x = {"name" : "John", "age" : 36} dict  
x = {"apple", "banana", "cherry"} set 
x = frozenset({"apple", "banana", "cherry"})  frozenset 
x = True  bool  
x = b"Hello"  bytes 
x = bytearray(5)  bytearray 
x = memoryview(bytes(5))  memoryview  
x = None  NoneType  


Configurando o tipo de dados específico

Se você deseja especificar o tipo de dados, pode usar as seguintes funções de construtor:

Example Data Type Try it
x = str("Hello World")  str 
x = int(20) int 
x = float(20.5) float 
x = complex(1j) complex 
x = list(("apple", "banana", "cherry")) list  
x = tuple(("apple", "banana", "cherry"))  tuple 
x = range(6)  range 
x = dict(name="John", age=36) dict  
x = set(("apple", "banana", "cherry"))  set 
x = frozenset(("apple", "banana", "cherry"))  frozenset 
x = bool(5) bool  
x = bytes(5)  bytes 
x = bytearray(5)  bytearray 
x = memoryview(bytes(5))  memoryview  

Números Python
Existem três tipos numéricos em Python:

int
float
complex

Variáveis de tipos numéricos são criadas quando você atribui um valor a elas:

Exemplo
x = 1    # int
y = 2.8  # float
z = 1j   # complex
Para verificar o tipo de qualquer objeto em Python, use a type()função:

Exemplo
print(type(x))
print(type(y))
print(type(z))

Int
Int, ou inteiro, é um número inteiro, positivo ou negativo, sem decimais, de comprimento ilimitado.

Exemplo
Inteiros:

x = 1
y = 35656222554887711
z = -3255522

print(type(x))
print(type(y))
print(type(z))

Flutuador

Float, ou "número de ponto flutuante" é um número, positivo ou negativo, contendo um ou mais decimais.

Exemplo
Flutuadores:

x = 1.10
y = 1.0
z = -35.59

print(type(x))
print(type(y))
print(type(z))

Float também pode ser números científicos com um "e" para indicar a potência de 10.

Exemplo
Flutuadores:

x = 35e3
y = 12E4
z = -87.7e100

print(type(x))
print(type(y))
print(type(z))

Complexo
Os números complexos são escritos com um "j" como a parte imaginária:

Exemplo
Complexo:

x = 3+5j
y = 5j
z = -5j

print(type(x))
print(type(y))
print(type(z))

Conversão de tipo
Você pode converter de um tipo para outro com os métodos int(), float()e :complex()

Exemplo
Converter de um tipo para outro:

x = 1    # int
y = 2.8  # float
z = 1j   # complex

#convert from int to float:
a = float(x)

#convert from float to int:
b = int(y)

#convert from int to complex:
c = complex(x)

print(a)
print(b)
print(c)

print(type(a))
print(type(b))
print(type(c))

Nota: Você não pode converter números complexos em outro tipo de número.

Número aleatório
Python não tem uma random()função para fazer um número aleatório, mas Python tem um módulo embutido chamado randomque pode ser usado para fazer números aleatórios:

Exemplo
Importe o módulo aleatório e exiba um número aleatório entre 1 e 9:

import random

print(random.randrange(1, 10))

Especifique um tipo de variável
Pode haver momentos em que você deseja especificar um tipo para uma variável. Isso pode ser feito com fundição. Python é uma linguagem orientada a objetos e, como tal, usa classes para definir tipos de dados, incluindo seus tipos primitivos.

A conversão em python é, portanto, feita usando funções construtoras:

int() - constrói um número inteiro a partir de um literal inteiro, um literal float (removendo todos os decimais) ou um literal de string (desde que a string represente um número inteiro)
float() - constrói um número float a partir de um literal inteiro, um literal float ou um literal de string (desde que a string represente um float ou um inteiro)
str() - constrói uma string a partir de uma ampla variedade de tipos de dados, incluindo strings, literais inteiros e literais float

Exemplo
Inteiros:

x = int(1)   # x will be 1
y = int(2.8) # y will be 2
z = int("3") # z will be 3

Exemplo
Flutuadores:

x = float(1)     # x will be 1.0
y = float(2.8)   # y will be 2.8
z = float("3")   # z will be 3.0
w = float("4.2") # w will be 4.2

Exemplo

Cordas:

x = str("s1") # x will be 's1'
y = str(2)    # y will be '2'
z = str(3.0)  # z will be '3.0'









