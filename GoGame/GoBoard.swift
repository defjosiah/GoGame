//
//  GoBoard.swift
//  GoGame
//
//  Created by Josiah Grace on 3/13/15.
//  Copyright (c) 2015 Josiah Grace. All rights reserved.
//

import Foundation

public class GoBoard{
    
    public enum GoPoint: Printable {
        case Black
        case White
        case Empty
        
        public var description : String {
            get {
                switch(self) {
                    case .Black:
                        return "Black"
                    case .White:
                        return "White"
                    case .Empty:
                        return "Empty"
                }
            }
        }
    }
    
    public var goBoard: [[GoPoint]]
    
    public init(gridSize: Int) {
        self.goBoard = [[GoPoint]](count: gridSize,
                                    repeatedValue: [GoPoint](count:gridSize,
                                        repeatedValue:GoPoint.Empty))
        
    }
    
    public func placeStone(x: Int, y: Int, stone: GoPoint) {
        if(goBoard[x][y] == GoPoint.Empty) {
            goBoard[x][y] = stone
        }
        else {
            println("Error with placing stone (\(stone)) at (\(x), \(y))")
        }
    }
    
    public func removeStone(x: Int, y: Int) {
        goBoard[x][y] = GoPoint.Empty
    }
}