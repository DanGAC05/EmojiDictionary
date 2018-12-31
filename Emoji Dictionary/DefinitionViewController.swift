//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Laura Chrest on 12/30/18.
//  Copyright © 2018 Dan Chrest. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        
        if emoji == "😀" {
        definitionLabel.text = "A Smiley Face"
        }
        
        if emoji == "😂" {
            definitionLabel.text = "Cying Laughing"
        }
        
        if emoji == "☹️" {
            definitionLabel.text = "Frowny Face"
        }
        
        if emoji == "😱" {
            definitionLabel.text = "OMG"
        }
        
        if emoji == "💩" {
            definitionLabel.text = "POOP!!"
        }
        
        if emoji == "✌️" {
            definitionLabel.text = "Peace Brotha"
        }
        
        if emoji == "👍" {
            definitionLabel.text = "Thumps up"
        }
        
        if emoji == "🤮" {
            definitionLabel.text = "Barf"
        }
        
        if emoji == "🤫" {
            definitionLabel.text = "Shhhhhh!!"
        }
        
        if emoji == "😎" {
            definitionLabel.text = "Cool Dude"
        }
        
        if emoji == "🐬" {
            definitionLabel.text = "Awesome Dolphin"
        }
        
        if emoji == "🏒" {
            definitionLabel.text = "Hockey1!"
        }
    }
    



}
