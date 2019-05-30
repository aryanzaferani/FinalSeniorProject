//
//  GameStats.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/30/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import Foundation

final class GameStats
{
    static var myGame = GameStats()
    var wrong = 0
    var right = 0
    var level = 0
    var round = 0
    
    func wrongAnswer()
    {
        self.wrong = wrong + 1
        self.nextRound()
    }
    
    func rightAnswer()
    {
        self.right = right + 1
        self.nextRound()
    }
    
    func setLevel(level: Int)
    {
        self.level = level
    }
    
    func nextRound()
    {
        self.round = round + 1
    }
    
    func newGame()
    {
        self.right = 0
        self.wrong = 0
        self.round = 1
    }
}

