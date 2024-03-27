//
//  Array+ExtensionsTests.swift
//  
//
//  Created by waheedCodes on 27/03/2024.
//

import XCTest
@testable import KBUtility

final class Array_ExtensionsTests: XCTestCase {
    
    func test_array_whenElementIsWithinBounds_returnsElement() throws {
        let numbers = [1, 2, 3, 4, 5]
        let numOne = numbers[safeIndex: 0]
        XCTAssert(numOne == 1, "true")
    }
        
    func test_array_whenElementIsOutOfBounds_returnsNil() throws {
        let numbers = [1, 2, 3, 4, 5]
        let numbersElementsCount = numbers.count
        let numOne = numbers[safeIndex: numbersElementsCount + 1]
        XCTAssert(numOne == nil, "true")
    }
}
