//
//  ValidNumber.swift
//  UnitTestSwiftCourse
//
//  Created by Cristian Peña Barrios on 07/06/22.
//

import Foundation

class ValidNumber
{
    func check(num: Int) -> Bool
    {
        if (num >= 0 && num < 10)
        {
            return true
        } else
        {
            return false
        }
    }
}
