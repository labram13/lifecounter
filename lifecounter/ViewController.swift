//
//  ViewController.swift
//  lifecounter
//
//  Created by Michaelangelo Labrador on 4/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    var playerOneHealth = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        playerLoseLabel.isHidden = true;
        playerOneHealthLabel.text = String(playerOneHealth)
    }
    @IBOutlet weak var playerOneHealthLabel: UILabel!
    @IBOutlet weak var playerLoseLabel: UILabel!
    @IBAction func HandleAddOneHealth(_ sender: Any) {
        playerOneHealth += 1
        playerOneHealthLabel.text = String(playerOneHealth)
    }
    @IBAction func HandleMinusOneHealth(_ sender: Any) {
        playerOneHealth -= 1
        playerOneHealthLabel.text = String(playerOneHealth)
    }
    
    @IBAction func HandleAddFiveHealth(_ sender: Any) {
        playerOneHealth += 5
        playerOneHealthLabel.text = String(playerOneHealth)
    }
    
    @IBAction func HandleMinusFiveHealth(_ sender: Any) {
        playerOneHealth -= 5
        playerOneHealthLabel.text = String(playerOneHealth)
        if playerOneHealth <= 0 {
            playerLoseLabel.text = "Player One Loses!"
            playerLoseLabel.isHidden = false
        }
    }
    
    }
                                           

