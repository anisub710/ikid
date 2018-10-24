//
//  SecondViewController.swift
//  iKid
//
//  Created by Anirudh Subramanyam on 10/22/18.
//  Copyright © 2018 Anirudh Subramanyam. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var secondView: UIView!
    @IBOutlet weak var questionText: UILabel!
    var imgView: UIImageView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let h = CGFloat(self.view.frame.height * 0.2)
        let img = UIImage(named: "2sday")
        imgView = UIImageView(image: img)
        imgView!.frame = CGRect(x: 0, y: 50, width: self.view.frame.width, height: h)
        imgView?.heightAnchor.constraint(equalToConstant: h)
        secondView.addSubview(imgView!)
        secondView.centerYAnchor.constraint(equalToSystemSpacingBelow: imgView!.centerYAnchor, multiplier: 1)
        imgView?.isHidden = true
    }

    @IBAction func next(_ sender: UIButton) {
        if (questionText.isHidden){
            questionText.isHidden = false
            imgView?.isHidden = true
            sender.setTitle("Next", for: .normal)
        }else {
            questionText.isHidden = true
            imgView?.isHidden = false
            sender.setTitle("Again!", for: .normal)
        }
        UIView.transition(with: self.secondView, duration: 0.5, options: .transitionFlipFromRight, animations: {}, completion: nil)
    }
    
}

