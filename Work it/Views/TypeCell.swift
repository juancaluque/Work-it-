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
    
    let typeOfWorkOut: [String] = [workOut.Chest.rawValue, workOut.Back.rawValue, workOut.Legs.rawValue, workOut.Bicep.rawValue, workOut.Tricep.rawValue, workOut.Abs.rawValue]
    
    func configureCell(name: String) {
        typeLbl.text = name 
    }

}
