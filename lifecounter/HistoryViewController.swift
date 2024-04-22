//
//  HistoryViewController.swift
//  lifecounter
//
//  Created by Michaelangelo Labrador on 4/21/24.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var receivedHistory: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(receivedHistory)
        tableView.dataSource = self
     
        
    }
    @IBAction func HandleBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension HistoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return receivedHistory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = receivedHistory[indexPath.row]
        cell.selectionStyle = .none
        
        return cell
    }
    
    
}

