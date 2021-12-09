//
//  NumbersTableViewCell.swift
//  Binary Counter
//
//  Created by admin on 09/12/2021.
//

import UIKit

protocol NumbersCellDelegate {
    func addOrSubtract(number: Int,boolean: Bool)
}

class NumbersTableViewCell: UITableViewCell {

    var delegate : NumbersCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func subtractBtn(_ sender: UIButton) {
        let value = Int(numberLabel.text!)!
        delegate?.addOrSubtract(number: value, boolean: false)
    }
    
    @IBAction func addBtn(_ sender: UIButton) {
        let value = Int(numberLabel.text!)!
        delegate?.addOrSubtract(number: value, boolean: true)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
