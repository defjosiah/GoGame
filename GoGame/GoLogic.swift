//
//  GoLogic.swift
//  GoGame
//
//  Created by Josiah Grace on 3/11/15.
//  Copyright (c) 2015 Josiah Grace. All rights reserved.
//

import Foundation

//Go is played on a 19x19 square grid of points, by two players called Black and White.
//Each point on the grid may be colored black, white or empty.
//a point P, not colored C, is said to reach C, if there is a path of (vertically or horizontally) adjacent points of P's color from P to a point of color C.
//Clearing a color is the process of emptying all points of that color that don't reach empty.


//Starting with an empty grid, the players alternate turns, starting with Black.
//A turn is either a pass; or a move that doesn't repeat an earlier grid coloring.
//A move consists of coloring an empty point one's own color; then clearing the opponent color, and then clearing one's own color.
//The game ends after two consecutive passes.
//A player's score is the number of points of her color, plus the number of empty points that reach only her color.
//The player with the higher score at the end of the game is the winner. Equal scores result in a tie.

public class GoLogic {
    
    struct player {
        var color: GoBoard.GoPoint
    }
    
    public init() {
        
    }
}
