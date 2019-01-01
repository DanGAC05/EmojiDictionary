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
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC  = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "Not your best choice"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😂"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "Shits and Giggles"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "☹️"
        emoji3.birthYear = 2010
        emoji3.category = "Smiley"
        emoji3.definition = "Be more creative...you have so many options"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😱"
        emoji4.birthYear = 2012
        emoji4.category = "Smiley"
        emoji4.definition = "OMG"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "💩"
        emoji5.birthYear = 2013
        emoji5.category = "Object"
        emoji5.definition = "Oops, I crapped my pants!!"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "✌️"
        emoji6.birthYear = 2012
        emoji6.category = "Gesture"
        emoji6.definition = "Peace Brotha"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "👍"
        emoji7.birthYear = 2012
        emoji7.category = "Gesture"
        emoji7.definition = "Canada, Eh!"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🤮"
        emoji8.birthYear = 2014
        emoji8.category = "Smiley"
        emoji8.definition = "Brown Tequila Results"
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "🤫"
        emoji9.birthYear = 2012
        emoji9.category = "Smiley"
        emoji9.definition = "Shhhhh...JJ sleeping!!"
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "😎"
        emoji10.birthYear = 2010
        emoji10.category = "Smiley"
        emoji10.definition = "Cool Dude"
        
        let emoji11 = Emoji()
        emoji11.stringEmoji = "🐬"
        emoji11.birthYear = 2014
        emoji11.category = "Animal"
        emoji11.definition = "Sharks are better!"
        
        let emoji12 = Emoji()
        emoji12.stringEmoji = "🏒"
        emoji12.birthYear = 2014
        emoji12.category = "Sport"
        emoji12.definition = "Hockey!!"
        
        let emoji13 = Emoji()
        emoji13.stringEmoji = "🥅"
        emoji13.birthYear = 2014
        emoji13.category = "Sport"
        emoji13.definition = "GOOOOAAAAALLLLLL!!!"
        
        let emoji14 = Emoji()
        emoji14.stringEmoji = "🇨🇦"
        emoji14.birthYear = 1867
        emoji14.category = "Fun with Flags"
        emoji14.definition = "Canada, Eh!!"
        
        let emoji15 = Emoji()
        emoji15.stringEmoji = "🇺🇸"
        emoji15.birthYear = 1776
        emoji15.category = "Fun with Flags"
        emoji15.definition = "U-S-A...U-S-A...U-S-A!!"
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10, emoji11, emoji2, emoji13, emoji14, emoji15]
    }
    
}

