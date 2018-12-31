//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Dan Chrest on 12/30/18.
//  Copyright © 2018 Dan Chrest. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    @IBOutlet weak var dacooltableview: UITableView!
    
    var emojis = ["😀","😂","☹️","😱","💩","✌️","👍","🤮","🤫","😎","🐬","🏒"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
}

