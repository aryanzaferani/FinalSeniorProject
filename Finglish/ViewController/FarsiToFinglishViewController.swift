//
//  FarsiToFinglishViewController.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/29/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import UIKit

class FarsiToFinglishViewController: UIViewController,UITextViewDelegate
{

    @IBOutlet weak var inputField: UITextView!
    @IBOutlet weak var outputField: UITextView!
    @IBOutlet weak var addWords: UIButton!
    @IBOutlet weak var submit: UIButton!
    
    var app = Translator.myTranslator
    
    var final = NSMutableAttributedString(string: "")
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        inputField.delegate = self
        
        
        setUp()
        app.getData()
        app.setupDB()
        app.setRetrieveCallback()

    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        inputField.text = ""
        outputField.text = ""
        addWords.isHidden = true
        app.setRetrieveCallback()
        app.newWords = []
    }
    
    
    func textViewDidBeginEditing(_ textView: UITextView)
    {
        if textView.textColor == UIColor.lightGray
        {
            textView.text = ""
            textView.textColor = UIColor.black
        }
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
    {
        if(text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    func setUp()
    {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)
        submit.layer.cornerRadius = 20
        submit.layer.borderWidth = 4
        submit.layer.borderColor = UIColor.black.cgColor
        
        addWords.layer.cornerRadius = 20
        addWords.layer.borderWidth = 4
        addWords.layer.backgroundColor = UIColor.green.cgColor
        addWords.layer.borderColor = UIColor.black.cgColor
        addWords.isHidden = true
        
        inputField.layer.cornerRadius = 20
        inputField.layer.borderWidth = 4
        inputField.layer.borderColor = UIColor.black.cgColor
        inputField.text = "Please Enter Text to Translate"
        inputField.textColor = UIColor.lightGray
        
        outputField.layer.cornerRadius = 20
        outputField.layer.borderWidth = 4
        outputField.layer.borderColor = UIColor.black.cgColor
        outputField.isUserInteractionEnabled = false
    }
    
    

    @IBAction func submit(_ sender: Any)
    {
        app.newWords = []
        app.setRetrieveCallback()
        final = app.translateToFinglish(text: inputField.text)
        outputField.attributedText = final
        outputField.isUserInteractionEnabled = true
        
        if app.newWords.count > 0
        {
            addWords.isHidden = false
        }
        else
        {
            addWords.isHidden = true
        }
    }
    
    @IBAction func unwindFromNavigationController(sender: UIStoryboardSegue)
    {
        
    }
    


}
