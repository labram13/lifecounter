//
//  ViewController.swift
//  lifecounter
//
//  Created by Michaelangelo Labrador on 4/16/24.
//

import UIKit

class ViewController: UIViewController {
    var healthChunk = 5
    //player health
    var playerOne = 20
    var playerTwo = 20
    
    //player health
    @IBOutlet weak var playerOneHealthLabel: UILabel!
    @IBOutlet weak var playerTwoHealthLabel: UILabel!
    
    //player loss label
    @IBOutlet weak var playerLossLabel: UILabel!
    @IBOutlet weak var healthChunkField: UITextField!
    
    
    @IBOutlet var minusChunkButtons: [UIButton]!
    
    @IBOutlet var addChunkButtons: [UIButton]!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        playerOneHealthLabel.text = String(playerOne)
        playerTwoHealthLabel.text = String(playerTwo)
        playerLossLabel.isHidden = true
        
    }
    
    //Set Health Chunk
    @IBAction func HandleSetHealthChunk(_ sender: Any) {
        if let userInput = Int(healthChunkField.text ?? "") {
            healthChunk = userInput
            for button in minusChunkButtons {
                button.setTitle("-\(healthChunk)", for: .normal)
            }
            for button in addChunkButtons {
                button.setTitle("+\(healthChunk)", for: .normal)
            }
        } else {
            print("No valid number")
        }
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
        playerOne += healthChunk
        playerOneHealthLabel.text = String(playerOne)
    }
    @IBAction func HandleFirstMinusFive(_ sender: Any) {
        playerOne -= healthChunk
        playerOneHealthLabel.text = String(playerOne)
        if playerOne <= 0 {
            playerLossLabel.text = "Player One Loses!"
            playerLossLabel.isHidden = false
        }
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
        playerTwo += healthChunk
        playerTwoHealthLabel.text = String(playerTwo)
    }
    
    @IBAction func HandleSecondMinusFive(_ sender: Any) {
        playerTwo -= healthChunk
        playerTwoHealthLabel.text = String(playerTwo)
        if playerTwo <= 0 {
            playerLossLabel.text = "Player Two Loses!"
            playerLossLabel.isHidden = false
        }
    }
}
                                           
