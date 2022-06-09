//
//  Calculator.swift
//  UnitTestSwiftCourse
//
//  Created by Cristian Peña Barrios on 30/05/22.
//

import Foundation


class Calculator {
    func add(n1: Int, n2: Int)->Int{
        return n1 + n2
    }
    
    func subtract(n1: Int, n2: Int)->Int{
        return n1 - n2
    }
    
    func divide(n1: Int, n2: Int)->Int{
        return n1 / n2
    }
    
    func divideByZero(n1: Int, n2: Int) throws -> Int{
        if(n2 == 0){
            throw SomeError.ZeroError
        }
        return n1 / n2
    }
    
    func arraySquared(numberArray: [Int]) ->[Int]
     {
        var result = [Int]()
        for number in numberArray{
            result.append(number * number)
        }
        return result
    }
    
    func arraySquared2(numberArray: [Int]) ->[Int]
    {
        return numberArray.map{numberArray in numberArray * numberArray}
    }
    
    // una funcion que pasado como parametro de entrada un array de enteros nos devuelva un array de enteros pero elevado al cuadrado
    func myArray(arrayInt: [Int]) -> [Int]
    {
        var arrayPow: [Int] = []
        
        //recorremos el array
        for itemInt in arrayInt
        {
            //agregar el arreglo elevado a la potencia
            let item = pow(Double(itemInt), 2)
            arrayPow.append(Int(item))
        }
        return arrayPow
    }
}

enum SomeError: Error{
    case ZeroError
}
