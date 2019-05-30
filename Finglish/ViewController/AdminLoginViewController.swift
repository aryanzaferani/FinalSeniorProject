//
//  AdminLoginViewController.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/30/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import UIKit

class AdminLoginViewController: UIViewController , UITextFieldDelegate
{

    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        password.delegate = self
        password.text = ""
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)
        submit.layer.cornerRadius = 20
        submit.layer.borderWidth = 4
        submit.layer.borderColor = UIColor.black.cgColor
        
        password.layer.borderWidth = 4
        password.layer.borderColor = UIColor.black.cgColor

    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        password.text = ""
    }

    @IBAction func submit(_ sender: Any)
    {
        if(password.text == "az1995")
        {
            performSegue(withIdentifier: "WordConfirmation", sender: nil)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        password.resignFirstResponder()
        return true
    }

}
