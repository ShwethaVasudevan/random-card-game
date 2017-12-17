//
//  ViewController.swift
//  Deal
//
//  Created by anuj babu on 16/12/17.
//  Copyright © 2017 TagTechLtd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rightScoreLabel: UILabel!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    let cardArray = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
    var rightScore = 0
    var leftScore = 0

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealButtonClick(sender: UIButton) {
        //randomizing the card numbers
        
        let leftNumber = Int(arc4random_uniform(13))
        let rightNumber = Int(arc4random_uniform(13))
        
        leftImageView.image = UIImage(named: cardArray[leftNumber])
        rightImageView.image = UIImage(named: cardArray[rightNumber])
        
        if leftNumber < rightNumber {
            rightScore = rightScore + 1
            rightScoreLabel.text = "\(rightScore)"
        }
        
        if leftNumber > rightNumber {
            leftScore = leftScore + 1
            leftScoreLabel.text = "\(leftScore)"
        }

    }
}

