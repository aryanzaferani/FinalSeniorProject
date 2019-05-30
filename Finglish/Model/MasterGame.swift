//
//  MasterGame.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/30/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import Foundation
import UIKit
class MasterGame: UIViewController
{
    var myGame = GameStats.myGame
    var app = Translator.myTranslator
    
    func checkValidity(user : String, actual : String) -> Bool
    {
        if(user == actual)
        {
            return true
        }
        return false
    }
    
    func nextLevel()
    {
        myGame.nextRound()
    }
    
    func makeLevels(level : Int) -> [Word]
    {
        var level1 = [Word]()
        var level2 = [Word]()
        for item in app.word_translations
        {
            if item.farsi.count < 4
            {
                level1.append(item)
            }
            if item.farsi.count > 4
            {
                level2.append(item)
            }
        }
        if(level == 1)
        {
            return level1
        }
        else if (level == 2)
        {
            return level2
        }
        else if (level == 3)
        {
            return level2
        }
        else if (level == 4)
        {
            return level1
        }
        return level2
    }
    
    func generateWord(level : Int) -> Word
    {
        let words = self.makeLevels(level: level)
        let word = words.randomElement()
        return word!
        
    }
    
}
