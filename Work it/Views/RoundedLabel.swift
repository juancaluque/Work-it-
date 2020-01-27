//
//  RoundedLabel.swift
//  Work it
//
//  Created by Juan Luque on 1/24/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedLabel: UILabel {

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
    }

}
