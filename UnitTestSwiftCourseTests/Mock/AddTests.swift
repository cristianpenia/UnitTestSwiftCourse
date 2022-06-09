//
//  AddTests.swift
//  UnitTestSwiftCourseTests
//
//  Created by Cristian Peña Barrios on 07/06/22.
//

import Foundation
import XCTest
import Mockingbird

@testable import UnitTestSwiftCourse
// a la hora de trabajar con mock siempre se suelen seguir los mismo pasos
class AddTest: XCTestCase
{
    var sut: Add?
    // paso 1 generar un mock de la clase interfaz que necesitemos
    let mockValidNumber: ValidNumberMock = mock(ValidNumber.self)
    let mockPrint: PrintMock = mock(Print.self)
    
    override func setUp()
    {
        // inyectamos el mock
        sut = Add(validNumber: mockValidNumber, print: mockPrint)
    }
    
    override func tearDown()
    {
        sut = nil
    }
    
    func testAdd()
    {
        given(mockValidNumber.check(num: 3)) ~> true
        given(mockValidNumber.check(num: 4)) ~> true
        let num = sut?.add(a: 3, b: 4)
        verify(mockValidNumber.check(num: 3)).wasCalled()
        verify(mockValidNumber.check(num: 4)).wasCalled()
        print(num ?? 1000)
    }
    
    func testAdd2()
    {
        given(mockValidNumber.check(num: any())) ~> true
        let checkNumber: Bool = mockValidNumber.check(num: 3)
        XCTAssertEqual(true, checkNumber)
    }
    
    /*
     AAA
     Arrange
     Act
     Assert
     
     GWT
     Given
     When
     Then
     */
    func testAAAPattern() {
        //Arrange - configuras todas esas condiciones iniciales con las que quieres que se ejecute el test - condiciones iniciales
        given(mockValidNumber.check(num: 3)) ~> true
        given(mockValidNumber.check(num: 4)) ~> true
        
        // Act - la actuacion - metodo que queremos probar
        let result = sut?.add(a: 3, b: 4)
        
        
        // Assert - verificamos que el resultado es el esperado
        XCTAssertEqual(7, result)
    }
    
    func testGWTPattern() {
        // Given - precondiciones iniciales
        given(mockValidNumber.check(num: 3)) ~> true
        given(mockValidNumber.check(num: 4)) ~> true
        // When
        let result = sut?.add(a: 3, b: 4)
        // Then
        XCTAssertEqual(7, result)
    }
    
    func testAddPrint() {
        // Given
        given(mockValidNumber.check(num: any())) ~> true
        
        // When
        sut?.addPrint(a: 3, b: 3)
        
        // Then
        verify(mockValidNumber.check(num: 3)).wasCalled(exactly(2))  // veirifcando que haya sido llamadado
        verify(mockValidNumber.check(num: 9)).wasNeverCalled() // nunca ha sido llamado
        verify(mockValidNumber.check(num: 3)).wasCalled(atLeast(1)) // llamado al menos una vez
        verify(mockValidNumber.check(num: 1)).wasCalled(atMost(3))
        
        verify(mockPrint.showMessage(num: 6)).wasCalled() // verificamos que se a llamado al con ese valor
    }
    
    func testAddPrintShowError() {
        // Given
        given(mockValidNumber.check(num: any())) ~> false
        
        // when
        sut?.addPrint(a: 3, b: 3)
        
        // then
        verify(mockPrint.showError()).wasCalled()
    }
}
