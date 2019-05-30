//
//  ScoreViewController.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/30/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController
{
    var myGame = GameStats.myGame
    @IBOutlet weak var score: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)
        
        score.text = String(myGame.right) + "/" + String(myGame.right + myGame.wrong)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool)
    {
        score.text = String(myGame.right) + "/" + String(myGame.right + myGame.wrong)
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
