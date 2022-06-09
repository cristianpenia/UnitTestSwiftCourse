//
//  StringManagerTest.swift
//  UnitTestSwiftCourseTests
//
//  Created by Cristian Peña Barrios on 05/06/22.
//

import Foundation
import XCTest

@testable import UnitTestSwiftCourse

class StringManagerTests: XCTestCase
{
    var sut: StringManager!
    
    override func setUp()
    {
        print("RRRR setUp()")
        sut = StringManager()
    }
    
    override func tearDown()
    {
        print("RRRR tearDown()")
        sut = nil
    }
    
    func testToUpperCase() {
        // Given - dado
        let qwertyLowerCased = "qwerty"
        
        // When - Cuando
        let result = sut.toUpperCased(message: qwertyLowerCased)
        
        // Then - despues/luego/entonces/pues
        let qwertyUpperCased = "QWERTY"
        XCTAssertEqual(qwertyUpperCased, result)
    }
    
    func testToLowerCased() {
        // Given
        let qwertyUpperCased = "QWERTY"
        
        
        // When
        let result = sut.toLowerCased(message: qwertyUpperCased)
        
        // Then
        let qwertyLowerCased = "qwerty"
        XCTAssertEqual(qwertyLowerCased, result)
    }
    
}

