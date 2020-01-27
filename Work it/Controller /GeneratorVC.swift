//
//  GeneratorVC.swift
//  Work it
//
//  Created by Juan Luque on 1/26/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import UIKit

class GeneratorVC: UIViewController {

    // OUTLETS
    @IBOutlet weak var titleLabel: RoundedLabel!
    @IBOutlet weak var generatorBtn: RoundedButton!
    @IBOutlet weak var resultLabel: RoundedLabel!
    
    // @IBACTIONS
    @IBOutlet weak var generatorBtnPressed: RoundedButton!
    
    // VARIABLES
    var titleOfLabel: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = titleOfLabel
        
        
        
    }
    
    // FUNC
    
    func initData(muscle: String, excercise: String) {
        
        titleOfLabel = "\(muscle) \(excercise)"
    }


}
