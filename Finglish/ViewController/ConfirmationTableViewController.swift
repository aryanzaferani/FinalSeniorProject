//
//  ConfirmationTableViewController.swift
//  Finglish
//
//  Created by Aryan Zaferani-Nobari on 4/30/19.
//  Copyright © 2019 Zaferani. All rights reserved.
//

import UIKit

class ConfirmationTableViewController: UIViewController,UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var myTable: UITableView!
    var app = Translator.myTranslator
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return app.pending.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Word", for: indexPath) as? WordCell
        let selected_word = app.pending[indexPath.row].farsi
        cell?.word.text = selected_word
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "confirmWord"
        {
            let destVC = segue.destination as! ConfirmWordViewController
            let selectedIndexPath = myTable.indexPathForSelectedRow
            let word = app.pending[(selectedIndexPath?.row)!]
            destVC.word = word
            destVC.index = selectedIndexPath!.row
    
        }
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        app.setRetrieveCallback()
        self.myTable.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "tile")!)
        self.myTable.reloadData()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindFromWordConfirmation(sender: UIStoryboardSegue)
    {
        
    }
    

}
