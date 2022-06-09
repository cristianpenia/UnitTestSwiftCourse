//
//  ValidNumberTests.swift
//  UnitTestSwiftCourseTests
//
//  Created by Cristian Peña Barrios on 07/06/22.
//

import Foundation
import XCTest

@testable import UnitTestSwiftCourse

class ValidNumberTest: XCTestCase
{
    var sut: ValidNumber?
    
    override func setUp()
    {
        sut = ValidNumber()
    }
    
    override func tearDown()
    {
        sut = nil
    }
    
    func testCheck() {
        XCTAssertEqual(true, sut?.check(num: 4))
    }
    
    func testCheckNegative() {
        XCTAssertEqual(false, sut?.check(num: -4))
    }
    
    func testCheckMoreThan10() {
        XCTAssertEqual(false, sut?.check(num: 10))
    }
    
}
