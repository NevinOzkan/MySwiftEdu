//
//  SwiftTestingTests.swift
//  SwiftTestingTests
//
//  Created by Nevin Özkan on 9.04.2023.
//

import XCTest
@testable import SwiftTesting

final class SwiftTestingTests: XCTestCase {

    let math = MathematicFunctions()


        func testAddFunction() {
            
            let result = math.addIntegers(x: 5, y: 8)
            
            XCTAssertEqual(result, 13)
        }
        
        func testMultiplyFunction() {
            
            let result = math.multiplyNumbers(x: 5, y: 8)
            
            XCTAssertEqual(result, 40)
        }
        
        func testDivideFunction() {
            
            let result = math.divideIntegers(x: 10, y: 2)
            
            XCTAssertEqual(result, 5)
        }
    
}
