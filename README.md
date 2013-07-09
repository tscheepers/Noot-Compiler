# Noot #
### Language and Compiler ###

The compiler will compile Noot to TAM (Triangle Abstract Machine) using a compiler that has been generated by Antlr3 out of an Antlr grammar.

## Usage ##

To run the compiler enter ```java -jar NootCompiler.jar examples/example.nt```. You should always enter a file with a ```.nt``` extention. This will automaticlly generate ```.as```, ```.dot``` and ```.tam``` files. With the ```.as``` you could examine the generated TAM instructions. The ```.dot``` is a visual representation of the AST. And the ```.tam``` is a file you can put into the TAM Interpreter. After compilation the program will automaticlly be executed.

To execute a compiled program use ```java -jar TAMInterpreter.jar examples/example.tam```.

## Code examples ##

Simple read, calculate and print example:

```
noot

int a, b, c, d;

a := b := 4;
c := b + 3 * 2;

read(d);
print(d + c);
```

Example with the use of compound expressions. The result of the last expression before the closing curly bracket will fill ```a```.

```
noot

bool a;

a := {
		int h,i;
		read(h,i);
		(h > i);
	};
```

Using a coumpound expression in an if statement.

```
noot

bool a;
const bool b := true;

a := if b == true then {
		int i,j;
		j := 5;
		(j > i);
	}
else
	false
fi;

print(a); // comment, this will print true
```

Using a while loop.

```
noot

bool a;
int b;

a := true;
b := 0;

while a == true do {
	b := b + 1;
	print(b);
	if b > 10 then { a := false; } fi;
} od;
```

## .dot files ##

The generated dot files can be opened with [Graphviz](http://www.graphviz.org/).

## Credits ##

TAM was developed by David A Watt & Deryck F Brown as educational tool for their book [Programming Language Processors in Java](http://www.dcs.gla.ac.uk/~daw/books/PLPJ/).

The TAM Assembler was developed by Matthijs Bomhoff from the University of Twente.

## Lisence ##

This source is subject to the BSD License.
Please see the LICENSE file for more information.

All other rights reserved.

THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
PARTICULAR PURPOSE.

Copyright (c) 2013 Thijs Scheepers.
