//
//  MediumGameViewController.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 5/14/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import UIKit

class MediumGameViewController: MasterGame
{

    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    
    
    @IBOutlet weak var word: UILabel!
    
    @IBOutlet weak var status: UILabel!
    var options = [String]()
    var correctWord = Word(finglish: "", farsi: "")
    var index = 0;
    var array = [String]()
    
    override func viewWillAppear(_ animated: Bool)
    {
        array = []
        index = 0
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)
        myGame.newGame()
        correctWord = generateWord(level: myGame.level)
        word.text = correctWord.finglish
        array = correctWord.farsi.map{String($0)}
        print(array)
        self.generateOptions()
        status.text = ""
        status.textColor = UIColor.white
    }
    
    func generateOptions()
    {
        options = []
        var i = 0
        print(index)
        print(correctWord.farsi.count)
        self.options.append(array[index])
        while i < 3
        {
            var letter = app.mapping.values.randomElement()![0]
            while self.options.contains(where: { element in
                if letter == element
                {
                    return true
                }
                return false
                
            })
            {
                letter = app.mapping.values.randomElement()![0]

            }
            self.options.append(letter)
            i = i + 1
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
        
        option1.setTitle(String(options[0]), for: .normal)
        option2.setTitle(String(options[1]), for: .normal)
        option3.setTitle(String(options[2]), for: .normal)
        option4.setTitle(String(options[3]), for: .normal)
    }
    
    @IBAction func option1(_ sender: Any)
    {
        option1.setTitle(options[0], for: .normal)
        if (checkValidity(user: options[0], actual: array[index]))
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
        index = index + 1
        if(index >= correctWord.farsi.count)
        {
            performSegue(withIdentifier: "Score", sender: nil)
        }
        else
        {
            self.generateOptions()
        }
    }
    
    @IBAction func option2(_ sender: Any)
    {
        option2.setTitle(options[1], for: .normal)
        if (checkValidity(user: options[1], actual: array[index]))
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
        index = index + 1
        if(index >= correctWord.farsi.count)
        {
            performSegue(withIdentifier: "Score", sender: nil)
        }
        else
        {
            self.generateOptions()
        }
    }
    
    @IBAction func option3(_ sender: Any)
    {
        option3.setTitle(options[2], for: .normal)
        if (checkValidity(user: options[2], actual: array[index]))
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
        index = index + 1
        if(index >= correctWord.farsi.count)
        {
            performSegue(withIdentifier: "Score", sender: nil)
        }
        else
        {
            self.generateOptions()
        }
    }
    
    @IBAction func option4(_ sender: Any)
    {
        option4.setTitle(options[3], for: .normal)
        if (checkValidity(user: options[3], actual: array[index]))
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
        index = index + 1
        if(index >= correctWord.farsi.count)
        {
            performSegue(withIdentifier: "Score", sender: nil)
        }
        else
        {
            self.generateOptions()
        }
    }
}
