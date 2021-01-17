//
//  ViewController.swift
//  DicePlay
//
//  Created by omar alzhrani on 29/07/1441 AH.
//  Copyright © 1441 omar alzhrani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    var randomNum : Int = 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var numberWin = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceLabelView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func RollButtonPressed(_ sender: UIButton) {
       print("الامور طيبه والحمدلله")
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDice1])
        diceImageView2.image = UIImage(named: diceArray[randomDice2])
        if randomDice1 == randomDice2 {
            numberWin += 1
            randomNum = Int(arc4random_uniform(10))
            diceLabelView.text = String(numberWin)
        } else {
            if Int(diceLabelView.text ?? "0")! > 0 {
                     numberWin -= 1
                        diceLabelView.text = String(numberWin)
            }
        }
        
        
    }
    
}

