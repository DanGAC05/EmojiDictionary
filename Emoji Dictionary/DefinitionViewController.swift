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
        definitionLabel.text = "Not your best choice"
        }
        
        if emoji == "😂" {
            definitionLabel.text = "Shits and Giggles"
        }
        
        if emoji == "☹️" {
            definitionLabel.text = "Be more creative, you have so many options"
        }
        
        if emoji == "😱" {
            definitionLabel.text = "OMG"
        }
        
        if emoji == "💩" {
            definitionLabel.text = "Oops, I crapped my pants!!"
        }
        
        if emoji == "✌️" {
            definitionLabel.text = "Peace Brotha"
        }
        
        if emoji == "👍" {
            definitionLabel.text = "Canada, eh!"
        }
        
        if emoji == "🤮" {
            definitionLabel.text = "Brown Tequila"
        }
        
        if emoji == "🤫" {
            definitionLabel.text = "Shhhhhh...JJ sleeping!!"
        }
        
        if emoji == "😎" {
            definitionLabel.text = "Cool Dude"
        }
        
        if emoji == "🐬" {
            definitionLabel.text = "Sharks are better!"
        }
        
        if emoji == "🏒" {
            definitionLabel.text = "Hockey!"
        }
    }
    



}
