//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Tim McElroy1 on 6/26/17.
//  Copyright © 2017 Tim McElroy1. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       emojiLabel.text = emoji
        if emoji == "🍕"{
        definitionLabel.text = "Pizza Slice!"
    }
    
        if emoji == "😀"{
            definitionLabel.text = "Smiley Face!"
        }
        if emoji == "😘"{
            definitionLabel.text = "Kissy face!"
        }
        if emoji == "🤑"{
            definitionLabel.text = "Money where your mouth is!"
        }
        if emoji == "🌲"{
            definitionLabel.text = "Evergreen!"
        }
        if emoji == "🐋"{
            definitionLabel.text = "Big Blue Whale!"
        }

        if emoji == "😉"{
            definitionLabel.text = "Winking Face!"
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
