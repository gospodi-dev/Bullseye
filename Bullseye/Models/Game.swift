//
//  Game.swift
//  Bullseye
//
//  Created by Gospodi on 06.12.2021.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    
    func points(sliderValue: Int) -> Int {
        return 100 - abs (target - sliderValue)
    }
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
    }
}

