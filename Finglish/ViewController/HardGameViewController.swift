//
//  HardGameViewController.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/30/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import UIKit

class HardGameViewController: MasterGame, UITextFieldDelegate
{

    @IBOutlet weak var word: UILabel!
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var enterWord: UITextField!
    @IBOutlet weak var status: UILabel!
    
    var myWord = Word(finglish: "", farsi: "")

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)
        submit.isUserInteractionEnabled = false
        submit.isHidden = false
        enterWord.delegate = self
        self.setWord()
        
        submit.layer.cornerRadius = 20
        submit.layer.borderWidth = 4
        submit.layer.borderColor = UIColor.black.cgColor
        
        status.text = ""
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        submit.isUserInteractionEnabled = false
        submit.isHidden = false
        enterWord.delegate = self
        self.setWord()
    }
    
    func setWord()
    {
        myWord = generateWord(level: myGame.level)
        word.text = myWord.finglish
        enterWord.text = nil
    }


    @IBAction func submit(_ sender: Any)
    {
        if (checkValidity(user: enterWord.text!, actual: myWord.farsi))
        {
            myGame.rightAnswer()
            status.text = "Correct"
            status.textColor = UIColor.green
        }
        else
        {
            myGame.wrongAnswer()
            status.text = "Incorrect"
            status.textColor = UIColor.red
        }
        if(myGame.round > 10)
        {
            performSegue(withIdentifier: "Score", sender: nil)
        }
        self.setWord()
        submit?.isUserInteractionEnabled = false
        submit.isHidden = true
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        let text = (enterWord.text! as NSString).replacingCharacters(in: range, with: string)
        if !text.isEmpty{
            submit?.isUserInteractionEnabled = true
            submit.isHidden = false
        } else {
            submit?.isUserInteractionEnabled = false
            submit.isHidden = true
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        enterWord.resignFirstResponder()
        return true
    }

}
