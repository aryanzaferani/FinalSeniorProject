//
//  GameMenuViewController.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/30/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import UIKit

class GameMenuViewController: UIViewController
{
    var myGame = GameStats.myGame
    var app = Translator.myTranslator
    @IBOutlet weak var level1: UIButton!
    @IBOutlet weak var level2: UIButton!
    @IBOutlet weak var level3: UIButton!
    @IBOutlet weak var level4: UIButton!
    @IBOutlet weak var level5: UIButton!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)
        self.buttonSetup()
        myGame.newGame()
        app.setRetrieveCallback()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        app.setRetrieveCallback()
        myGame.newGame()
    }
    
    func buttonSetup()
    {
        level1.layer.cornerRadius = 20
        level1.layer.borderWidth = 4
        level1.layer.borderColor = UIColor.black.cgColor
        
        level2.layer.cornerRadius = 20
        level2.layer.borderWidth = 4
        level2.layer.borderColor = UIColor.black.cgColor
        
        level3.layer.cornerRadius = 20
        level3.layer.borderWidth = 4
        level3.layer.borderColor = UIColor.black.cgColor
        
        level4.layer.cornerRadius = 20
        level4.layer.borderWidth = 4
        level4.layer.borderColor = UIColor.black.cgColor
        
        level5.layer.cornerRadius = 20
        level5.layer.borderWidth = 4
        level5.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func level1(_ sender: Any)
    {
        myGame.level = 1
    }
    
    @IBAction func level2(_ sender: Any)
    {
        myGame.level = 2
    }
    
    @IBAction func level3(_ sender: Any)
    {
        myGame.level = 3
    }
    
    @IBAction func level4(_ sender: Any)
    {
        myGame.level = 4
    }
    
    @IBAction func level5(_ sender: Any)
    {
        myGame.level = 5
    }
    
    @IBAction func unwindFromGame(sender: UIStoryboardSegue)
    {
        
    }
    
}
