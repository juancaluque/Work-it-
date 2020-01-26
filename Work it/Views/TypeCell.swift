//
//  TypeCell.swift
//  Work it
//
//  Created by Juan Luque on 1/24/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import UIKit

class TypeCell: UITableViewCell {

    // OUTLETS
    @IBOutlet weak var typeLbl: UILabel!
    
    let typeOfWorkOut = ["Chest", "Back", "Legs", "Bicep", "Tricep", "Abs"]
    
    func configureCell(name: String) {
        typeLbl.text = name 
    }

}
