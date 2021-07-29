//
//  DeviceTableViewCell.swift
//  DevicesWorld
//
//  Created by Matheus Ramos on 27/07/21.
//

import Foundation
import UIKit

final class DeviceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var device: Device? {
        didSet {
            guard let device = device else { return }
            nameLabel.text = device.name
        }
    }
    
    override func awakeFromNib() {
       super.awakeFromNib()
    }
}
