//  WordAdderViewController.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/29/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import UIKit

class WordAdderViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    var app = Translator.myTranslator
    
    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)
        self.myTable.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        self.myTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return app.newWords.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Word", for: indexPath) as? WordCell
        let selected_word = app.newWords[indexPath.row]
        cell?.word.text = selected_word
        return cell!
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "submitWords"
        {
            let destVC = segue.destination as! SubmitWordViewController
            let selectedIndexPath = myTable.indexPathForSelectedRow
            let word = app.newWords[(selectedIndexPath?.row)!]
            destVC.word = word
            destVC.index = (selectedIndexPath?.row)!
        }
    }
    
    @IBAction func unwindFromSubmitController(sender: UIStoryboardSegue)
    {
        
    }
}
