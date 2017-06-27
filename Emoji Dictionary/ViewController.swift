//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Tim McElroy1 on 6/26/17.
//  Copyright © 2017 Tim McElroy1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
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
        performSegue(withIdentifier: "moveSeque", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.category = "Smiley"
        emoji1.definition = "Smiley Face!"
        emoji1.yearCreated = 2000
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😘"
        emoji2.category = "Smiley"
        emoji2.definition = "Kissy Face!"
        emoji2.yearCreated = 2002

        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤑"
        emoji3.category = "Smiley"
        emoji3.definition = "Money where your mouth is!"
        emoji3.yearCreated = 2003
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😉"
        emoji4.category = "Smiley"
        emoji4.definition = "Winking Face!"
        emoji4.yearCreated = 2003
    
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🍕"
        emoji5.category = "Food"
        emoji5.definition = "Pizza Slice!"
        emoji5.yearCreated = 2003
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🌲"
        emoji6.category = "Nature"
        emoji6.definition = "Tree!"
        emoji6.yearCreated = 2003
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🐋"
        emoji7.category = "Animal"
        emoji7.definition = "Big Blue Whale!"
        emoji7.yearCreated = 2003
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }
}

