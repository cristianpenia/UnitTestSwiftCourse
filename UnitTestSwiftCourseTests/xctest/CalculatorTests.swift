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
    
}
