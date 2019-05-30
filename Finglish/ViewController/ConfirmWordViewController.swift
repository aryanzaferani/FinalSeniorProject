//
//  ConfirmWordViewController.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/30/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import UIKit

class ConfirmWordViewController: UIViewController, UITextFieldDelegate
{

   
    var app = Translator.myTranslator
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var enterWord: UITextField!
    
    
    var word = Word(finglish: "", farsi: "")
    var index = 0
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)
        submit.layer.cornerRadius = 20
        submit.layer.borderWidth = 4
        submit.layer.borderColor = UIColor.black.cgColor
        wordLabel.text = word.farsi
        enterWord.text = word.finglish
        enterWord.delegate = self
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        enterWord.resignFirstResponder()
        return true
    }
    
    @IBAction func submit(_ sender: Any)
    {
        app.pending.remove(at: index)
        app.finalizeWord(word: Word(finglish: enterWord.text!.lowercased(), farsi: word.farsi))
        app.removeWord(word: word)
        app.setRetrieveCallback()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
