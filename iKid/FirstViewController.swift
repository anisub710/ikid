//
//  FirstViewController.swift
//  iKid
//
//  Created by Anirudh Subramanyam on 10/22/18.
//  Copyright © 2018 Anirudh Subramanyam. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var track : Int = 0
    var question : String = "Hey Dad, have you seen my sunglasses?"
    var punch : String = "No son, have you seen my dad glasses?"
    
    @IBOutlet weak var joke: UILabel!
    @IBOutlet var jokeView: UIView!
    
    @IBAction func next(_ sender: UIButton) {
        track += 1
        joke.text = (track % 2 == 0) ? question : punch
        let buttonText = (track % 2 == 0) ? "Next" : "Again!"
        sender.setTitle(buttonText, for: .normal)
        UIView.transition(with: self.jokeView, duration: 0.5, options: .transitionFlipFromRight, animations: {}, completion: nil)
    }
}

