//
//  File.swift
//  UnitTestSwiftCourseTests
//
//  Created by Cristian Peña Barrios on 30/05/22.
//

import Foundation
import XCTest

@testable import UnitTestSwiftCourse

class CalculatorTests: XCTestCase {
 
    var sut: Calculator!
    
    override func setUp() { // inicializacion
        print("RRRR \(#function)")
        sut = Calculator()
        
    }
    
    override func tearDown() {
        print("RRRR \(#function)")
        sut = nil
    }
    
    func testCalculatorNotNil() {
        
        // haciendo uso de los Assert
        // solo ejecutar un Assert por metodo para que no surjan conflictos
        //  los assert pueden mostrar mensajes
        
        
//        XCTAssertNotNil(sut)
//        XCTAssertNil(sut)
        print("RRRR \(#function)")
        XCTAssertNotNil(sut, "SUT deberia ser not nil en este punto")
//        XCTAssertNil(sut, "SUT deberia de ser nil en este punto ")
        
        // Give When Then es un estandar
    }
    
    func testCalculatorNotNil2() {
        print("RRRR \(#function)")
        XCTAssertNil(sut, "SUT no es nulo")
        
    }
    
    func testAddAssert() { // para ver como funcionan los Assert
        print("RRRR \(#function)")
        // 1. Arrange
        let resultadoEsperado = 30
        var resultadoActual: Int
        // 2. Act
        resultadoActual = sut.add(n1: 10, n2: 20)
        // 3.
        XCTAssertEqual(resultadoEsperado, resultadoActual, "el metodo falla")
        
    }
    
}
