//
//  EasyGameViewController.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/30/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import UIKit

class EasyGameViewController: MasterGame
{
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    
    
    @IBOutlet weak var word: UILabel!
    
    @IBOutlet weak var status: UILabel!
    var options = [Word]()
    var correctWord = Word(finglish: "", farsi: "")
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)
        myGame.newGame()
        self.generateOptions()
        status.text = ""
        status.textColor = UIColor.white
    }
    
    func generateOptions()
    {
        options = []
        var i = 0
        correctWord = generateWord(level: myGame.level)
        self.options.append(correctWord)
        word.text = correctWord.finglish
        while i < 3
        {
            let words = makeLevels(level: myGame.level)
            var word = words.randomElement()
            while self.options.contains(where: { element in
                if word?.farsi == element.farsi
                {
                    return true
                }
                return false
                
            })
            {
                word = words.randomElement()
            }
            self.options.append(word!)
            i = i+1
        }
        self.options.shuffle()
        resetColors()
    }
    
    func resetColors()
    {
        option1.layer.cornerRadius = 20
        option1.layer.borderWidth = 4
        option1.layer.borderColor = UIColor.black.cgColor
        
        option2.layer.cornerRadius = 20
        option2.layer.borderWidth = 4
        option2.layer.borderColor = UIColor.black.cgColor
        
        option3.layer.cornerRadius = 20
        option3.layer.borderWidth = 4
        option3.layer.borderColor = UIColor.black.cgColor
        
        option4.layer.cornerRadius = 20
        option4.layer.borderWidth = 4
        option4.layer.borderColor = UIColor.black.cgColor
        
        
        
        option1.setTitle(options[0].farsi, for: .normal)
        option2.setTitle(options[1].farsi, for: .normal)
        option3.setTitle(options[2].farsi, for: .normal)
        option4.setTitle(options[3].farsi, for: .normal)
    }
    
    @IBAction func option1(_ sender: Any)
    {
        option1.setTitle(options[0].farsi, for: .normal)
        if (checkValidity(user: options[0].farsi, actual: correctWord.farsi))
        {
            status.text = "CORRECT"
            status.textColor = UIColor.green
            myGame.rightAnswer()

        }
        else
        {
            status.text = "INCORRECT"
            status.textColor = UIColor.red
            myGame.wrongAnswer()

        }
        if(myGame.round > 10)
        {
            performSegue(withIdentifier: "Score", sender: nil)
        }
        self.generateOptions()
    }
    
    @IBAction func option2(_ sender: Any)
    {
        option2.setTitle(options[1].farsi, for: .normal)
        if (checkValidity(user: options[1].farsi, actual: correctWord.farsi))
        {
            status.text = "CORRECT"
            status.textColor = UIColor.green
            myGame.rightAnswer()
        }
        else
        {
            status.text = "INCORRECT"
            status.textColor = UIColor.red
            myGame.wrongAnswer()

        }
        if(myGame.round > 10)
        {
            performSegue(withIdentifier: "Score", sender: nil)
        }
        self.generateOptions()
    }
    
    
    @IBAction func option3(_ sender: Any)
    {
        option3.setTitle(options[2].farsi, for: .normal)
        if (checkValidity(user: options[2].farsi, actual: correctWord.farsi))
        {
            status.text = "CORRECT"
            status.textColor = UIColor.green
            myGame.rightAnswer()
        }
        else
        {
            status.text = "INCORRECT"
            status.textColor = UIColor.red
            myGame.wrongAnswer()

        }
        if(myGame.round > 10)
        {
            performSegue(withIdentifier: "Score", sender: nil)
        }
        self.generateOptions()
    }
    
    
    @IBAction func option4(_ sender: Any)
    {
        option4.setTitle(options[3].farsi, for: .normal)
        if (checkValidity(user: options[3].farsi, actual: correctWord.farsi))
        {
            status.text = "CORRECT"
            status.textColor = UIColor.green
            myGame.rightAnswer()
        }
        else
        {
            status.text = "INCORRECT"
            status.textColor = UIColor.red
            myGame.wrongAnswer()

        }
        if(myGame.round > 10)
        {
            performSegue(withIdentifier: "Score", sender: nil)
        }
        self.generateOptions()
    }
}
