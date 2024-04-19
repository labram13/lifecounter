//
//  ViewController.swift
//  lifecounter
//
//  Created by Michaelangelo Labrador on 4/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    //player health
    var playerOne = 20
    var playerTwo = 20
    
    //player health
    @IBOutlet weak var playerOneHealthLabel: UILabel!
    @IBOutlet weak var playerTwoHealthLabel: UILabel!
    
    //player loss label
    @IBOutlet weak var playerLossLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        playerOneHealthLabel.text = String(playerOne)
        playerTwoHealthLabel.text = String(playerTwo)
        playerLossLabel.isHidden = true
        
    }
    
    //Player One Functions
    @IBAction func HandleFirstAddOne(_ sender: Any) {
        playerOne += 1
        playerOneHealthLabel.text = String(playerOne)
    }
    
    @IBAction func HandleFirstMinusOne(_ sender: Any) {
        playerOne -= 1
        playerOneHealthLabel.text = String(playerOne)
        if playerOne <= 0 {
            playerLossLabel.text = "Player One Loses!"
            playerLossLabel.isHidden = false
        }
    }
    
    @IBAction func HandleFirstAddFive(_ sender: Any) {
        playerOne += 5
        playerOneHealthLabel.text = String(playerOne)
    }
    @IBAction func HandleFirstMinusFive(_ sender: Any) {
        playerOne -= 5
        playerOneHealthLabel.text = String(playerOne)
        if playerOne <= 0 {
            playerLossLabel.text = "Player One Loses!"
            playerLossLabel.isHidden = false
        }
        print("test")
    }
    
    
    //Player Two Functions
    @IBAction func HandleSecondAddOne(_ sender: Any) {
        playerTwo += 1
        playerTwoHealthLabel.text = String(playerTwo)
    }
    
    @IBAction func HandleSecondMinusOne(_ sender: Any) {
        playerTwo -= 1
        playerTwoHealthLabel.text = String(playerTwo)
        if playerTwo <= 0 {
            playerLossLabel.text = "Player Two Loses!"
            playerLossLabel.isHidden = false
        }
    }
    
    @IBAction func HandleSecondAddFive(_ sender: Any) {
        playerTwo += 5
        playerTwoHealthLabel.text = String(playerTwo)
    }
    
    @IBAction func HandleSecondMinusFive(_ sender: Any) {
        playerTwo -= 5
        playerTwoHealthLabel.text = String(playerTwo)
        if playerTwo <= 0 {
            playerLossLabel.text = "Player Two Loses!"
            playerLossLabel.isHidden = false
        }
    }
}
                                           
