//
//  ResultsViewController.swift
//  RockPaperScissors
//
//  Created by Jasmeet Singh on 2018-12-28.
//  Copyright © 2018 Jusmyth. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var winner: UILabel!
    @IBOutlet weak var BotChoice: UILabel!
    @IBOutlet weak var PlayerChoice: UILabel!
    
    var botChoiceFromVC: String?
    var playerChoiceFromVC: String?
    var winnerFromVC: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BotChoice.text = botChoiceFromVC
        PlayerChoice.text = playerChoiceFromVC
        winner.text = winnerFromVC
    }
    

    @IBAction func Dismiss(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
