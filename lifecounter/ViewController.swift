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
    var playerThree = 20
    var playerFour = 20
    var playerFive = 20
    var playerSix = 20
    var playerSeven = 20
    var playerEight = 20
    
    //player health
   
    @IBOutlet weak var playerOneHealthLabel: UILabel!
    

    @IBOutlet weak var playerTwoHealthLabel: UILabel!
    
    @IBOutlet weak var playerThreeHealthLabel: UILabel!
    @IBOutlet weak var playerFourHealthLabel: UILabel!
    @IBOutlet weak var playerFiveHealthLabel: UILabel!
    @IBOutlet weak var playerSixHealthLabel: UILabel!
    @IBOutlet weak var playerSevenHealthLabel: UILabel!
    @IBOutlet weak var playerEightHealthLabel: UILabel!
    

    @IBOutlet var addChunkButtons: [UIButton]!
    
    @IBOutlet var minusChunkButtons: [UIButton]!
    
       
    @IBOutlet weak var playerLossLabel: UILabel!
    @IBOutlet weak var healthChunkField: UITextField!
    
    
    @IBOutlet var player5Labels: [UILabel]!
    @IBOutlet var player5Buttons: [UIButton]!
    
    
    @IBOutlet var player6Labels: [UILabel]!
    
    @IBOutlet var player6Buttons: [UIButton]!
    
    @IBOutlet var player7Labels: [UILabel]!
    
  
    @IBOutlet var player7Buttons: [UIButton]!
    
    @IBOutlet var player8Labels: [UILabel]!
    
    @IBOutlet var player8Buttons: [UIButton]!
    
    func disablePlayer (_ labels: [UILabel]!, _ buttons: [UIButton]!) {
        for label in labels {
            label.isHidden = true
            
        }
        for button in buttons {
            button.isHidden = true
        }
    }
    func enablePlayer (_ labels: [UILabel]!, _ buttons: [UIButton]!) {
        for label in labels {
            label.isHidden = false
            
        }
        for button in buttons {
            button.isHidden = false
        }
    }
    
    @IBOutlet weak var addPlayer5: UIButton!
    @IBOutlet weak var addPlayer6: UIButton!
    @IBOutlet weak var addPlayer7: UIButton!
    
    @IBOutlet weak var addPlayer8: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        playerOneHealthLabel.text = String(playerOne)
        playerTwoHealthLabel.text = String(playerTwo)
        playerThreeHealthLabel.text = String(playerThree)
        playerFourHealthLabel.text = String(playerFour)
        
        disablePlayer(player5Labels, player5Buttons)
        disablePlayer(player6Labels, player6Buttons)
        disablePlayer(player7Labels, player7Buttons)
        disablePlayer(player8Labels, player8Buttons)
        
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
            playerLossLabel.text = "Player 2 Loses!"
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
            playerLossLabel.text = "Player 2 Loses!"
            playerLossLabel.isHidden = false
        }
    }
    
    //player 3 functions
    @IBAction func HandleThirdAddOne(_ sender: Any) {
        playerThree += 1
        playerThreeHealthLabel.text = String(playerThree)
    }
    
    @IBAction func HandleThirdMinusOne(_ sender: Any) {
        playerThree -= 1
        playerThreeHealthLabel.text = String(playerThree)
        if playerThree <= 0 {
            playerLossLabel.text = "Player 3 Loses!"
            playerLossLabel.isHidden = false
        }
    }
    
    @IBAction func HandleThirdAddFiveChunk(_ sender: Any) {
        playerThree += healthChunk
        playerThreeHealthLabel.text = String(playerThree)
    }
    @IBAction func HandleThirdMinusChunk(_ sender: Any) {
        playerThree -= healthChunk
        playerThreeHealthLabel.text = String(playerThree)
        if playerThree <= 0 {
            playerLossLabel.text = "Player 3 loses!"
            playerLossLabel.isHidden = false
        }
    }
    
    //player four functions
    
    @IBAction func HandleFourthAddOne(_ sender: Any) {
        playerFour += 1
        playerFourHealthLabel.text = String(playerFour)
        
    }
    @IBAction func HandleFourthMinusOne(_ sender: Any) {
        playerFour -= 1
        playerFourHealthLabel.text = String(playerFour)
        if playerFour <= 0 {
            playerLossLabel.text = "Player 4 Loses!"
            playerLossLabel.isHidden = false
        }
    }
    @IBAction func HandleFourthAddChunk(_ sender: Any) {
        playerFour += healthChunk
        playerFourHealthLabel.text = String(playerFour)
    }
    @IBAction func HandleFourthMinusChunk(_ sender: Any) {
        playerFour -= healthChunk
        playerFourHealthLabel.text = String(playerFour)
        if playerFour <= 0 {
            playerLossLabel.text = "Player 4 Loses!"
            playerLossLabel.isHidden = false
        }
    }
    
    //player five
    @IBAction func HandleFifthAddOne(_ sender: Any) {
        playerFive += 1
        playerFiveHealthLabel.text = String(playerFive)
    }
    @IBAction func HandleFifthMinusOne(_ sender: Any) {
        playerFive -= 1
        playerFiveHealthLabel.text = String(playerFive)
        if playerFive <= 0 {
            playerLossLabel.text = "Player 5 Loses!"
            playerLossLabel.isHidden = false
        }
    }
    @IBAction func HandleFifthAddChunk(_ sender: Any) {
        playerFive += healthChunk
        playerFiveHealthLabel.text = String(playerFive)
    }
    @IBAction func HandleFifthMinusChunk(_ sender: Any) {
        playerFive -= healthChunk
        playerFiveHealthLabel.text = String(playerFive)
        if playerFive <= 0 {
            playerLossLabel.text = "Player 5 Loses!"
            playerLossLabel.isHidden = false
        }
    }
    
    //player 6
    @IBAction func HandleSixthAddOne(_ sender: Any) {
        playerSix += 1
        playerSixHealthLabel.text = String(playerSix)
    }
    @IBAction func HandleSixthMinusOne(_ sender: Any) {
        playerSix -= 1
        playerSixHealthLabel.text = String(playerSix)
        if playerSix <= 0 {
            playerLossLabel.text = "Player 6 Loses!"
            playerLossLabel.isHidden = false
        }
    }
    @IBAction func HandleSixthAddChunk(_ sender: Any) {
        playerSix += healthChunk
        playerSixHealthLabel.text = String(playerSix)
    }
    @IBAction func HandleSixthAMinusChunk(_ sender: Any) {
        playerSix -= healthChunk
        playerSixHealthLabel.text = String(playerSix)
        if playerSix <= 0 {
            playerLossLabel.text = "Player 6 Loses!"
            playerLossLabel.isHidden = false
        }
    }
    
    //player 7
    @IBAction func HandleSeventhAddOne(_ sender: Any) {
        playerSeven += 1
        playerSevenHealthLabel.text = String(playerSeven)
    }
    @IBAction func HandleSeventMinusOne(_ sender: Any) {
        playerSeven -= 1
        playerSevenHealthLabel.text = String(playerSeven)
        if playerSeven <= 0 {
            playerLossLabel.text = "Player 7 Loses!"
            playerLossLabel.isHidden = false
        }
    }
    
    @IBAction func HandleSeventhAddChunk(_ sender: Any) {
        playerSeven += healthChunk
        playerSevenHealthLabel.text = String(playerSeven)
    }
    @IBAction func HandleSeventhMinusChunk(_ sender: Any) {
        playerSeven -= healthChunk
        playerSevenHealthLabel.text = String(playerSeven)
        if playerSeven <= 0 {
            playerLossLabel.text = "Player 7 Loses!"
            playerLossLabel.isHidden = false
        }
    }
    
    //player 8
    @IBAction func HandleEigthAddOne(_ sender: Any) {
        playerEight += 1
        playerEightHealthLabel.text = String(playerEight)
    }
    @IBAction func HandleEightMinusOne(_ sender: Any) {
        playerEight -= 1
        playerEightHealthLabel.text = String(playerEight)
        if playerEight <= 0 {
            playerLossLabel.text = "Player 8 Loses!"
            playerLossLabel.isHidden = false
        }
    }
    @IBAction func HandleEightAddChunk(_ sender: Any) {
        playerEight += healthChunk
        playerEightHealthLabel.text = String(playerEight)
    }
    
    @IBAction func HandleEightMinusChunk(_ sender: Any) {
        playerEight -= healthChunk
        playerEightHealthLabel.text = String(playerEight)

        if playerEight <= 0 {
            playerLossLabel.text = "Player 8 Loses!"
            playerLossLabel.isHidden = false
        }
    }
    
    @IBAction func HandleAddPlayerFive(_ sender: Any) {
        enablePlayer(player5Labels, player5Buttons
        )
        addPlayer5.isHidden = true
        playerFiveHealthLabel.text = String(playerFive)
    }
    @IBAction func HandleAddPlayer6(_ sender: Any) {
        enablePlayer(player6Labels, player6Buttons
        )
        addPlayer6.isHidden = true
    }
    @IBAction func HandleAddPlayer7(_ sender: Any) {
        enablePlayer(player7Labels, player7Buttons
        )
        addPlayer7.isHidden = true
    }
    @IBAction func HandleAddPlayer8(_ sender: Any) {
        enablePlayer(player8Labels, player8Buttons
        )
        addPlayer8.isHidden = true
    }
    @IBAction func HandleNavigateHistory(_ sender: Any) {
        
    }
}
                                           
