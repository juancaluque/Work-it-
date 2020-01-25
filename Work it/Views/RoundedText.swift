//
//  RoundedText.swift
//  Work it
//
//  Created by Juan Luque on 1/25/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedText: UITextView {

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    
    func setupView() {
        self.layer.cornerRadius = 20
    }

}
