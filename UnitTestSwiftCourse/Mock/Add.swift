//
//  Add.swift
//  UnitTestSwiftCourse
//
//  Created by Cristian Peña Barrios on 07/06/22.
//

import Foundation

class Add
{
    var validNumber: ValidNumber
    var print: Print?
    
    init(validNumber: ValidNumber)
    {
        self.validNumber = validNumber
    }
    
    init(validNumber: ValidNumber, print: Print)
    {
        self.validNumber = validNumber
        self.print = print
    }
    
    func add(a: Int, b: Int) -> Int
    {
        if (validNumber.check(num: a) && validNumber.check(num: b)) {
            return a + b
        }
        return 0
    }
    
    func addPrint(a: Int, b: Int)
    {
        if (validNumber.check(num: a) && validNumber.check(num: b)) {
            print?.showMessage(num: a+b)
        } else {
            print?.showError()
        }
        
    }
}
