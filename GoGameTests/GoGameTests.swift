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
    
    func testPlaceStone() {
        let game = GoBoard(gridSize: 3)
        let board = game.goBoard
        for x in 0...board.count-1 {
            for y in 0...board.count-1 {
                game.placeStone(x, y: y, stone: GoBoard.GoPoint.Black)
            }
        }
        
        for x in 0...board.count-1 {
            for y in 0...board.count-1 {
                XCTAssert(game.goBoard[x][y] == GoBoard.GoPoint.Black)
            }
        }
        
        for x in 0...board.count-1 {
            for y in 0...board.count-1 {
                let out = game.placeStone(x, y: y, stone: GoBoard.GoPoint.White)
                switch(out) {
                    case .Success:
                        XCTFail("Place Stone should've failed")
                    case .Error(let error) : println(error)
                }
            }
        }
        
        println(game.goBoard)
    }
    
    func testRemoveStone() {
        let game = GoBoard(gridSize: 3)
        let boardSize = game.goBoard.count
        for x in 0...boardSize-1 {
            for y in 0...boardSize-1 {
                switch(game.placeStone(x, y: y, stone: GoBoard.GoPoint.Black)) {
                    case .Error(let error):
                        println(error)
                        XCTFail("Place shouldn't fail")
                    case .Success:
                        break
                }
            }
        }
        
        for x in 0...boardSize-1 {
            for y in 0...boardSize-1 {
                switch(game.removeStone(x, y: y)) {
                    case .Success: break
                    case .Error(let error):
                        println(error)
                        XCTFail("Remove shouldn't fail")
                }
            }
        }
        
        //Check if everything is empty now
        var mtGamePoint = GoBoard.GoPoint.Empty
        for row in game.goBoard {
            for space in row {
                XCTAssert(space == mtGamePoint)
            }
        }
        
    }
    
}
