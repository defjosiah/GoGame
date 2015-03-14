//
//  GoBoard.swift
//  GoGame
//
//  Created by Josiah Grace on 3/13/15.
//  Copyright (c) 2015 Josiah Grace. All rights reserved.
//

import Foundation

public class GoBoard {
    
    public enum GoPoint: Printable {
        case Black(Int, Int)
        case White(Int, Int)
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
        
        public func getPos() -> (Int, Int)? {
            switch(self) {
            case .Black(let x, let y) : return (x, y)
            case .White(let x, let y) : return (x, y)
            case .Empty : return nil
            }
        }
    }
    
    public enum Result {
        case Success
        case Error(String)
    }
    
    public var goBoard: [[GoPoint]]
    
    public init(gridSize: Int) {
        self.goBoard = [[GoPoint]](count: gridSize,
                                    repeatedValue: [GoPoint](count:gridSize,
                                        repeatedValue:GoPoint.Empty))
        
    }
    
    /**
    * Place a stone on the board. Return a success or failure.
    */
    public func placeStone(stone: GoPoint) -> Result {
        switch(stone) {
            case .Black, .White:
                let (x, y) = stone.getPos()!
                if(posEmpty(x, y: y)) {
                    goBoard[x][y] = stone
                    return .Success
                }
                else {
                    return .Error("Error with placing stone (\(stone)) at (\(x), \(y))")
                }
            case .Empty:
                return .Success
        }
    }
    
    /**
    * Remove a stone from the board. Eventually return errors, at the moment,
    * it will always be a success.
    */
    public func removeStone(x: Int, y: Int) -> Result {
        goBoard[x][y] = GoPoint.Empty
        return .Success
    }
    
    func posEmpty(x: Int, y: Int) -> Bool {
        switch(goBoard[x][y]) {
            case .Empty: return true
            default: return false
        }
    }
}