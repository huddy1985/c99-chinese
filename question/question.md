<meta http-equiv="content-type" content="text/html; charset=UTF-8">

##5.1.1 Translation environment
##5.1.1.1 Program structure
A source file together with all the headers and source files included via the preprocessing directive #include is known as a preprocessing translation unit. After preprocessing, a preprocessing translation unit is called a translation unit.

##5.1.1.2
##p22
if a character sequence that matches the syntax of a universal character name is produced by token concatenation, the behavior is undefined.

##5.1.2.3 sequence points
Objects that maybe modified between the previous sequence point and the next sequence point need not have received their correct values yet.

##5.2.1.1 Trigraph sequences
Why has these sequences?
目的是为了解决一些特定字符集中，比如一些七位代码集中，特定字符的输入问题。
一共9个，如果不能于这9个i匹配的话，那么编译器保持原状。一旦匹配，编译器就会替换。

## 5.2.1.2 Multibyte characters
state-dependent

initial shift state

shift state

##5.2.3 Signal and interrupts
function shall be implemented such that they may be interrupts at any time by signal, or may be called by a signal handler, or both, with no alteration to earlier, but still active, invocations' control flow(after the interrupt), function return vlaues, or objects with automatic storage duration.

with no alteration to earlier 指的什么意思呢？

##5.2.4.2.1 size of integer types

INT_MIN -32767
INT_MAX +32767

## 6.2.2 Linkages of identifiers
这个linkage如何定义呢？

## 6.2.3 Name spaces identifier
tags of structures,unons  and enumerations

和

members of structures or unions

的区别是什么呢？

明白了.
    
    tags:
    struct name_tags {
        int a;
        int b;
    };
    
    tags指的是name_tags,members指的是a、b。
    
##6.2.5 Types
array, function and pointer types a collectively called derived declarator types.

##6.2.6.1 Representations of types
Certain object representations need not represent a value of the object type. If the stored value of an object has such a representation and is read by an lvalue expression that does not have character type, the behavior is undefined. If such a representation is produced by a side effect that modifies all or any part of the object by an lvalue expression that does not have character type, the behavior is undefined. Such a representation is called a trap representation.