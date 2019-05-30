//
//  SubmitWordViewController.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/30/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import UIKit

class SubmitWordViewController: UIViewController, UITextFieldDelegate
{

    var app = Translator.myTranslator
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var enterWord: UITextField!
    @IBOutlet weak var suggestion: UILabel!
    
    var word = ""
    var index = 0
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)
        submit.layer.cornerRadius = 20
        submit.layer.borderWidth = 4
        submit.layer.borderColor = UIColor.black.cgColor
        wordLabel.text = word
        suggestion.text = app.farsiToFinglish(text: word)
        enterWord.delegate = self
        submit.isUserInteractionEnabled = false
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
    
    @IBAction func submit(_ sender: Any)
    {
        app.addWord(newWord: Word(finglish: enterWord.text!, farsi: word.lowercased()))
        app.newWords.remove(at: index)
    }

}
