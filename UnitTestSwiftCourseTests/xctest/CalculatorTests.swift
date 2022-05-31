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
    
    func testAddBDD() { // para ver como funcionan los Assert
        print("RRRR \(#function)")
        // 1. Give
        let resultadoEsperado = 30
        var resultadoActual: Int
        // 2. When
        resultadoActual = sut.add(n1: 10, n2: 20)
        // 3. Then
        XCTAssertEqual(resultadoEsperado, resultadoActual, "el metodo falla")
        
    }
    
    func testAdd() { // para ver como funcionan los Assert
        print("RRRR \(#function)")

        XCTAssertEqual(30, sut.add(n1: 10, n2: 20), "el metodo falla")
        
    }
    
    func testAssetTypes() { // tipos
        print("RRRR \(#function)")
//        XCTAssert
        // riesgo transaccional / enrolamiento id afiliacion 21 / la sesion se ocupa para
        // tokenisacion de tarjetas alta y eliminacion
        XCTAssertTrue(1 == 1)
        XCTAssertFalse(1 != 1)
        XCTAssertNil(nil)
        XCTAssertNotNil(sut)
        XCTAssertEqual(30, sut.add(n1: 10, n2: 20))
        XCTAssertEqual("rufus", "rufus")
        XCTAssertGreaterThan(12, 11)
    }
    
}
