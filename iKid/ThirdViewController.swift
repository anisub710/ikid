//
//  ThirdViewController.swift
//  iKid
//
//  Created by Anirudh Subramanyam on 10/22/18.
//  Copyright © 2018 Anirudh Subramanyam. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var knockView: UIView!
    @IBOutlet weak var knockText: UILabel!
    var track = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func next(_ sender: UIButton) {
        track += 1
        switch track % 5 {
        case 0:
            knockText.text = "Knock knock"
            sender.setTitle("Next", for: .normal)
        case 1:
            knockText.text = "Who's there?"
        case 2:
            knockText.text = "Vodoo."
        case 3:
            knockText.text = "Vodoo who?"
        case 4:
            knockText.text = "Vodoo you think you, are asking me so many questions?"
            sender.setTitle("Again!", for: .normal)
        default:
            break
        }
        UIView.transition(with: self.knockView, duration: 0.5, options: .transitionFlipFromRight, animations: {}, completion: nil)
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
