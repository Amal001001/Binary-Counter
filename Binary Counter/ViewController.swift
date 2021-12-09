//
//  ViewController.swift
//  Binary Counter
//
//  Created by admin on 09/12/2021.
//

import UIKit

class ViewController: UIViewController, NumbersCellDelegate {
    
    var numbersArrayStarter = [1]
    var numbers = [Int]()
    var total = 0
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...15{
            numbersArrayStarter.append(numbersArrayStarter[i]*10)
            numbers.append(numbersArrayStarter[i])
        }
        
        tableView.dataSource = self
     //   tableView.delegate = self

    }
    
    func addOrSubtract(number: Int, boolean: Bool) {
        
        if boolean == true{ total += number }
        else{ total -= number }
        
        totalLabel.text = " Total: \(total)"
    }
}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! NumbersTableViewCell
          
        cell.numberLabel.text = String(numbers[indexPath.row])
        cell.delegate = self
        
            return cell
    }
    
}

