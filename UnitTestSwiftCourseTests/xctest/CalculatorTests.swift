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
    
    override func setUp()
    {
        print("RRRR setUp()")
        sut = Calculator()
    }
    
    override func tearDown()
    {
        print("RRRR tearDown()")
        sut = nil
    }
    
    func testCalculatorNotNil(){
        print("RRRR testCalculatorNotNil()")
        XCTAssertNotNil(sut, "SUT debería ser not nil en este punto")
    }
    

    func testAdd()
    {
        print("RRRR \(#function)")
        
        XCTAssertEqual(30, sut.add(n1: 10, n2: 20))
    }
    
    func testAssertTypes()
    {
        print("RRRR \(#function)")
        XCTAssertTrue(1 == 1)
        XCTAssertFalse(1 == 2)
        XCTAssertNil(nil)
        XCTAssertNotNil(sut)
        XCTAssertEqual(30, sut.add(n1: 10, n2: 20))
        XCTAssertEqual("rufus", "rufus","debe ser el mismo")
    }
    
    func testDivide() {
        print("RRRR \(#function)")
        XCTAssertEqual(2, sut.divide(n1: 4, n2: 2))
    }
    
    func testDivideByZero() {
        print("RRRR \(#function)")
        XCTAssertEqual(2, sut.divide(n1: 4, n2: 2))
        XCTAssertThrowsError(try sut.divideByZero(n1: 4, n2: 0))
    }
    func testDisable() {
        print("RRRR \(#function)")
        XCTAssertEqual(0,try sut.divideByZero(n1: 4, n2: 0))
    }
    
    func testPerformanceExample() {
        self.measure { //  el measure se ejecuta 10 veces y se saca el promedio en ejecutar este codigo
            sut.divide(n1: 4, n2: 2)
        }
    }
    
    func testMyArray() {
        print("RRRR \(#function)")
        let myArray: [Int] = [1,2,3,4,5]
        XCTAssertNotNil(sut.myArray(arrayInt:myArray))
        XCTAssertEqual(
            [1,4,9,16,25],
            sut.myArray(arrayInt: myArray)
        )
    }
    
    func testMyArray00() {
        print("RRRR \(#function)")
        // Given
        var myArray = [Int]()
        for i in 1...5 {
            myArray.append(i)
        }
        
        // When
        let result = sut.myArray(arrayInt:myArray)
        
        // Then
        let expectedResult = [1,4,9,16,25]
        XCTAssertEqual(
            expectedResult,
            result
        )
    }
    
    func testMyArray01() {
        print("RRRR \(#function)")
        // Given
        var myArray = [Int]()
        for i in 1...5 {
            myArray.append(i)
        }
        
        // When
        let result = sut.myArray(arrayInt:myArray)
        
        // Then
        let expectedResult = [1,4,9,16,25]
        XCTAssertEqual(
            expectedResult,
            result
        )
    }
    
}
