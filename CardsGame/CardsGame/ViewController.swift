//
//  ViewController.swift
//  CardsGame
//
//  Created by Radhika  on 16/06/16.
//  Copyright © 2016 Radhika . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LeftCardImageView: UIImageView!
    @IBOutlet weak var RightCardImageView: UIImageView!
    @IBOutlet weak var DealButton: UIButton!
    
    var cardNames:[String]=["card2","card3","card4","card5","card6","card7","card8","card9","card10","card11","card12","card13","card1"]
  
    @IBOutlet weak var enemyScoreLabel: UILabel!
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore:Int=0
    var enemyScore:Int=0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func PlayAroundTapped(sender: UIButton) {
        let LeftCardRandomNo: Int=Int(arc4random_uniform(13))
        let LeftCardName:String=cardNames[LeftCardRandomNo]
    self.LeftCardImageView.image = UIImage(named: LeftCardName)
        
        let RightCardRandomNo:Int=Int(arc4random_uniform(13))
        let RightCardName:String=cardNames[RightCardRandomNo]
        self.RightCardImageView.image = UIImage(named: RightCardName)
        
        if LeftCardRandomNo > RightCardRandomNo {
            //TODO LEFT is winner
            self.playerScore+=1
            self.playerScoreLabel.text=String(self.playerScore)
            
        } else if LeftCardRandomNo == RightCardRandomNo {
            //TODO : Equal
        } else {
            //TODO Right is winner
            self.enemyScore+=1
            self.enemyScoreLabel.text=String(self.enemyScore)
        }
        
    }
}

