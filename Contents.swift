//: Tarea: Juego de Memoria
// Carlos Eduardo Muñoz González

import UIKit

var numeros = 0...100

//numero divisible entre 5 print numero Bingo
//numero par print numero par
//numero impar print numero impar
//numero entre 30 y 40 numero Viva Swift

for n in numeros{
    
    if n >= 30 && n <= 40
    {
        print("\(n)\tViva Swift")
    }
    
    else if n % 5 == 0
    {
        print("\(n)\tBingo")
    }
    
    else if n % 2 == 0
    {
        print("\(n)\tPar")
    }
    
    else if n % 2 > 0
    {
        print("\(n)\tImpar")
    }

    
    
}
