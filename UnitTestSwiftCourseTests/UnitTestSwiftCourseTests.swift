//
//  UnitTestSwiftCourseTests.swift
//  UnitTestSwiftCourseTests
//
//  Created by Cristian Peña Barrios on 30/05/22.
//

import XCTest // framework que nos permite realizar la ejecucion de clases de una manera totalmente controlada
//basicamente nos permite evaluar si cada uno de los componentes que hicimos se comporta de manera adecuada o esperada
@testable import UnitTestSwiftCourse // equivale a nuestro nombre de paquete de proyecto
// y estamos importando nuestro modulo de la aplicacion con el atrtibuto de que va ser testeable para obtener un acceso especial a las clases de nuestra app


class UnitTestSwiftCourseTests: XCTestCase {

    // 1
    // el metodo que es llamdado antes de metodo de text por si se requiere inicializar
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    //3
    // limpias para que vuelvas iniciar de cero
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // 2
    // todo el codigo que se va ejecutar
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    // para ver el rendimiento
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
