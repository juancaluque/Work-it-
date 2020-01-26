//
//  RoundedButton.swift
//  Work it
//
//  Created by Juan Luque on 1/24/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    override func awakeFromNib() {
        setupView()
    }
    
    
    func setupView() {
        self.layer.cornerRadius = 20
        self.titleLabel?.numberOfLines = 2
        self.titleLabel?.textAlignment = .center
        self.titleLabel?.adjustsFontSizeToFitWidth = true
        self.titleLabel?.minimumScaleFactor = 0.5
        
        
    }

}
