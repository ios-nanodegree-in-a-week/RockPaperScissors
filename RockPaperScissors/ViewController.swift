//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Jasmeet Singh on 2018-12-28.
//  Copyright © 2018 Jusmyth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    static var winner: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func randomBotMove() -> String {
        let choice = Int(arc4random_uniform(3))
        switch choice {
        case 0:
            return "rock"
        case 1:
            return "paper"
        case 2:
            return "scissors"
        default:
            return "Something has gone wrong"
        }
    }
    
    func getPlayerChoice(_ userChoice: UIButton) -> String {
        let choice = userChoice.tag
        switch choice {
        case 0:
            return "rock"
        case 1:
            return "paper"
        case 2:
            return "scissors"
        default:
            return "Something has gone wrong"
        }
    }
    
    func findWinner(_ botChoice: String, _ playerChoice: String) -> String {
        if (playerChoice != botChoice) {
            switch playerChoice {
            case "rock":
                if (botChoice == "paper") {
                    return "Bot Wins 🤖"
                }
                else {
                    return "You Win! 🤠"
                }
            case "paper":
                if (botChoice == "scissors") {
                    return "Bot Wins 🤖"
                }
                else {
                    return "You Win! 🤠"
                }
                
            case "scissors":
                if (botChoice == "rock") {
                    return "Bot Wins 🤖"
                }
                else {
                    return "You Win! 🤠"
                }
            default:
                return "Something has gone wrong ❌"
            }
        }
        else {
            return "Its a Tie. Play Again. 🐣";
        }
    }
    
    
    @IBAction func play(_ playerMoveChoice: UIButton) {
        performSegue(withIdentifier: "showResults", sender: playerMoveChoice)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {

        if segue.identifier == "showResults" {
            let controller = segue.destination as! ResultsViewController
            let botChoice: String = randomBotMove()
            let playerChoice: String = getPlayerChoice((sender as? UIButton)!)
            
            let winner: String = findWinner(botChoice, playerChoice)
            
            controller.botChoiceFromVC = botChoice
            controller.playerChoiceFromVC = playerChoice
            controller.winnerFromVC = winner
        }
    }
}

