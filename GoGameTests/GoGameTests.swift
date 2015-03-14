//
//  GoGameTests.swift
//  GoGameTests
//
//  Created by Josiah Grace on 3/11/15.
//  Copyright (c) 2015 Josiah Grace. All rights reserved.
//

import XCTest
import GoGame

class GoGameTests: XCTestCase {
    
    override func setUp() {
        println("Test start")
    }
    
    override func tearDown() {
        println("Test End")
    }
    
    func testBoardInitialization() {
        // This is an example of a functional test case.
        let gameBoard = GoBoard(gridSize : 3)
        var mtGamePoint = GoBoard.GoPoint.Empty
        for row in gameBoard.goBoard {
            for space in row {
                XCTAssert(space == mtGamePoint)
            }
        }
    }
    
}
