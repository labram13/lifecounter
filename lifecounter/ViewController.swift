//
//  ViewController.swift
//  lifecounter
//
//  Created by Michaelangelo Labrador on 4/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var okButton: UIButton!
    
    func gameOverCheck(_ playerHealth: [UILabel]!) {
        var count = 0
        var totalPlayers = 0
        for health in playerHealth {
            if !health.isHidden {
                totalPlayers += 1
                let currHealth = Int(health.text!)!
                if currHealth <= 0 {
                    count += 1
                }
            }
        }
        print(totalPlayers - count == 1)
        if totalPlayers - count == 1 {
            gameOverLabel.isHidden = false
            okButton.isHidden = false
        }
    }
    
    @IBOutlet weak var gameOverLabel: UILabel!
    var playerHistory: [String] = []
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
        
        gameOverLabel.isHidden = true
        okButton.isHidden = true
        

        
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
        playerHistory.append("Player 1 added 1 life")
    }
    
    @IBAction func HandleFirstMinusOne(_ sender: Any) {
        playerOne -= 1
        playerOneHealthLabel.text = String(playerOne)
        if playerOne <= 0 {
//            playerLossLabel.text = "Player 1 Loses!"
            playerLossLabel.isHidden = false
        }
        playerHistory.append("Player 1 lost 1 life")
        gameOverCheck(allPlayerHealth)
    }
    
    @IBAction func HandleFirstAddFive(_ sender: Any) {
        playerOne += healthChunk
        playerOneHealthLabel.text = String(playerOne)
        playerHistory.append("Player 1 added \(healthChunk) life")
    }
    @IBAction func HandleFirstMinusFive(_ sender: Any) {
        playerOne -= healthChunk
        playerOneHealthLabel.text = String(playerOne)
        if playerOne <= 0 {
            playerLossLabel.text = "Player 1 Loses!"
            playerLossLabel.isHidden = false
        }
        playerHistory.append("Player 1 lost \(healthChunk) life")
        gameOverCheck(allPlayerHealth)
    }
    
    
    //Player Two Functions
    @IBAction func HandleSecondAddOne(_ sender: Any) {
        playerTwo += 1
        playerTwoHealthLabel.text = String(playerTwo)
        playerHistory.append("Player 2 added 1 life")
    }
    
    @IBAction func HandleSecondMinusOne(_ sender: Any) {
        playerTwo -= 1
        playerTwoHealthLabel.text = String(playerTwo)
        if playerTwo <= 0 {
            playerLossLabel.text = "Player 2 Loses!"
            playerLossLabel.isHidden = false
        }
        playerHistory.append("Player 2 lost 1 life")
        gameOverCheck(allPlayerHealth)
    }
    
    @IBAction func HandleSecondAddFive(_ sender: Any) {
        playerTwo += healthChunk
        playerTwoHealthLabel.text = String(playerTwo)
        playerHistory.append("Player 2 added \(healthChunk) life")
    }
    
    @IBAction func HandleSecondMinusFive(_ sender: Any) {
        playerTwo -= healthChunk
        playerTwoHealthLabel.text = String(playerTwo)
        if playerTwo <= 0 {
            playerLossLabel.text = "Player 2 Loses!"
            playerLossLabel.isHidden = false
        }
        playerHistory.append("Player 2 lost \(healthChunk) life")
        gameOverCheck(allPlayerHealth)
    }
    
    //player 3 functions
    @IBAction func HandleThirdAddOne(_ sender: Any) {
        playerThree += 1
        playerThreeHealthLabel.text = String(playerThree)
        playerHistory.append("Player 3 added 1 life")
    }
    
    @IBAction func HandleThirdMinusOne(_ sender: Any) {
        playerThree -= 1
        playerThreeHealthLabel.text = String(playerThree)
        if playerThree <= 0 {
            playerLossLabel.text = "Player 3 Loses!"
            playerLossLabel.isHidden = false
        }
        playerHistory.append("Player 3 lost 1 life")
        gameOverCheck(allPlayerHealth)
    }
    
    @IBAction func HandleThirdAddFiveChunk(_ sender: Any) {
        playerThree += healthChunk
        playerThreeHealthLabel.text = String(playerThree)
        playerHistory.append("Player 3 added \(healthChunk) life")
    }
    @IBAction func HandleThirdMinusChunk(_ sender: Any) {
        playerThree -= healthChunk
        playerThreeHealthLabel.text = String(playerThree)
        if playerThree <= 0 {
            playerLossLabel.text = "Player 3 loses!"
            playerLossLabel.isHidden = false
        }
        playerHistory.append("Player 3 lost \(healthChunk) life")
        gameOverCheck(allPlayerHealth)
    }
    
    //player four functions
    
    @IBAction func HandleFourthAddOne(_ sender: Any) {
        playerFour += 1
        playerFourHealthLabel.text = String(playerFour)
        playerHistory.append("Player 4 added 1 life")
        
    }
    @IBAction func HandleFourthMinusOne(_ sender: Any) {
        playerFour -= 1
        playerFourHealthLabel.text = String(playerFour)
        if playerFour <= 0 {
            playerLossLabel.text = "Player 4 Loses!"
            playerLossLabel.isHidden = false
        }
        playerHistory.append("Player 4 lost 1 life")
        gameOverCheck(allPlayerHealth)
    }
    @IBAction func HandleFourthAddChunk(_ sender: Any) {
        playerFour += healthChunk
        playerFourHealthLabel.text = String(playerFour)
        playerHistory.append("Player 4 added \(healthChunk) ")
    }
    @IBAction func HandleFourthMinusChunk(_ sender: Any) {
        playerFour -= healthChunk
        playerFourHealthLabel.text = String(playerFour)
        if playerFour <= 0 {
            playerLossLabel.text = "Player 4 Loses!"
            playerLossLabel.isHidden = false
        }
        playerHistory.append("Player 4 lost \(healthChunk) life")
        gameOverCheck(allPlayerHealth)
    }
    
    //player five
    @IBAction func HandleFifthAddOne(_ sender: Any) {
        playerFive += 1
        playerFiveHealthLabel.text = String(playerFive)
        playerHistory.append("Player 5 added 1 life ")
    }
    @IBAction func HandleFifthMinusOne(_ sender: Any) {
        playerFive -= 1
        playerFiveHealthLabel.text = String(playerFive)
        playerHistory.append("Player 5 lost 1 life")
        if playerFive <= 0 {
            
            playerLossLabel.text = "Player 5 Loses!"
            playerHistory.append(playerLossLabel.text!)
            playerLossLabel.isHidden = false
        }
        gameOverCheck(allPlayerHealth)
        
    }
    @IBAction func HandleFifthAddChunk(_ sender: Any) {
        playerFive += healthChunk
        playerFiveHealthLabel.text = String(playerFive)
        playerHistory.append("Player 5 added \(healthChunk) life")
    }
    @IBAction func HandleFifthMinusChunk(_ sender: Any) {
        playerFive -= healthChunk
        playerFiveHealthLabel.text = String(playerFive)
        playerHistory.append("Player 5 lost \(healthChunk) life")
        
        if playerFive <= 0 {
            playerLossLabel.text = "Player 5 Loses!"
            playerHistory.append(playerLossLabel.text!)
            playerLossLabel.isHidden = false
        }
        gameOverCheck(allPlayerHealth)
    }
    
    //player 6
    @IBAction func HandleSixthAddOne(_ sender: Any) {
        playerSix += 1
        playerSixHealthLabel.text = String(playerSix)
        playerHistory.append("Player 6 added 1 life")

    }
    @IBAction func HandleSixthMinusOne(_ sender: Any) {
        playerSix -= 1
        playerSixHealthLabel.text = String(playerSix)
        playerHistory.append("Player 6 lost 1 life")

        if playerSix <= 0 {
            playerLossLabel.text = "Player 6 Loses!"
            playerHistory.append(playerLossLabel.text!)
            playerLossLabel.isHidden = false
        }
        gameOverCheck(allPlayerHealth)
    }
    @IBAction func HandleSixthAddChunk(_ sender: Any) {
        playerSix += healthChunk
        playerSixHealthLabel.text = String(playerSix)
        playerHistory.append("Player 6 added \(healthChunk) life")
    }
    @IBAction func HandleSixthAMinusChunk(_ sender: Any) {
        playerSix -= healthChunk
        playerSixHealthLabel.text = String(playerSix)
        playerHistory.append("Player 6 lost \(healthChunk) life")

        if playerSix <= 0 {
            playerLossLabel.text = "Player 6 Loses!"
            playerLossLabel.isHidden = false
            playerHistory.append(playerLossLabel.text!)
        }
        gameOverCheck(allPlayerHealth)
    }
    
    //player 7
    @IBAction func HandleSeventhAddOne(_ sender: Any) {
        playerSeven += 1
        playerSevenHealthLabel.text = String(playerSeven)
        playerHistory.append("Player 7 added 1 life")

    }
    @IBAction func HandleSeventMinusOne(_ sender: Any) {
        playerSeven -= 1
        playerSevenHealthLabel.text = String(playerSeven)
        playerHistory.append("Player 7 lost 1 life")
        if playerSeven <= 0 {
            playerLossLabel.text = "Player 7 Loses!"
            playerLossLabel.isHidden = false
            playerHistory.append(playerLossLabel.text!)
        }
        gameOverCheck(allPlayerHealth)
    }
    
    @IBAction func HandleSeventhAddChunk(_ sender: Any) {
        playerSeven += healthChunk
        playerSevenHealthLabel.text = String(playerSeven)
        playerHistory.append("Player 7 added \(healthChunk) life")
    }
    @IBAction func HandleSeventhMinusChunk(_ sender: Any) {
        playerSeven -= healthChunk
        playerSevenHealthLabel.text = String(playerSeven)
        playerHistory.append("Player 7 lost \(healthChunk) life")
        if playerSeven <= 0 {
            playerLossLabel.text = "Player 7 Loses!"
            playerLossLabel.isHidden = false
            playerHistory.append(playerLossLabel.text!)
        }
        gameOverCheck(allPlayerHealth)
    }
    
    //player 8
    @IBAction func HandleEigthAddOne(_ sender: Any) {
        playerEight += 1
        playerEightHealthLabel.text = String(playerEight)
        playerHistory.append("Player 8 added 1 life")

    }
    @IBAction func HandleEightMinusOne(_ sender: Any) {
        playerEight -= 1
        playerEightHealthLabel.text = String(playerEight)
        playerHistory.append("Player 8 lost 1 life")

        if playerEight <= 0 {
            playerLossLabel.text = "Player 8 Loses!"
            playerLossLabel.isHidden = false
            playerHistory.append(playerLossLabel.text!)
        }
        gameOverCheck(allPlayerHealth)
    }
    @IBAction func HandleEightAddChunk(_ sender: Any) {
        playerEight += healthChunk
        playerEightHealthLabel.text = String(playerEight)
        playerHistory.append("Player 8 added \(healthChunk) life")

    }
    
    @IBAction func HandleEightMinusChunk(_ sender: Any) {
        playerEight -= healthChunk
        playerEightHealthLabel.text = String(playerEight)
        playerHistory.append("Player 8 lost \(healthChunk) life ")


        if playerEight <= 0 {
            playerLossLabel.text = "Player 8 Loses!"
            playerLossLabel.isHidden = false
            playerHistory.append(playerLossLabel.text!)
        }
        gameOverCheck(allPlayerHealth)
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "historyView" {
            if let destinationVC = segue.destination as? HistoryViewController {
                destinationVC.receivedHistory = playerHistory // your array to pass
            }
        }
    }
    
    
    
    @IBOutlet var addPlayerButtons: [UIButton]!
    
    @IBOutlet weak var startButton: UIButton!
    @IBAction func HandleStartGame(_ sender: Any) {
        for button in addPlayerButtons {
            if !button.isHidden {
                button.isHidden = true
            }
        }
        startButton.isHidden = true
    
    }
   
    @IBOutlet var allPlayerHealth: [UILabel]!
    @IBAction func HandleGameReset(_ sender: Any) {
        playerOne = 20
        playerTwo = 20
        playerThree = 20
        playerFour = 20
        playerFive = 20
        playerSix = 20
        playerSeven = 20
        playerEight = 20
        
        for health in allPlayerHealth {
            health.text = "20"
        }
        
        disablePlayer(player5Labels, player5Buttons)
        disablePlayer(player6Labels, player6Buttons)
        disablePlayer(player7Labels, player7Buttons)
        disablePlayer(player8Labels, player8Buttons)
        
        playerLossLabel.isHidden = true
        
        gameOverLabel.isHidden = true
        
        for button in addPlayerButtons {
            button.isHidden = false
        }
        okButton.isHidden = true
        
        playerHistory = []
        startButton.isHidden = false
    }
      
}
                                           
