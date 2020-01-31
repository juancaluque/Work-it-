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
    @IBOutlet weak var generatorBtnPressed: RoundedButton!
    
    // @IBACTIONS
    @IBAction func generateBtnPressed(_ sender: Any) {
        if muscle == "Chest" || muscle == "Legs" || excercise == "Leg Raise" || excercise == "Abs Crunch" || excercise == "Dumbbell" || excercise == "Bar Lifting" {
            let randNumber = Int.random(in: 10...25)
            self.resultLabel.text = "Reps: \(randNumber)"
        } else if excercise == "Pull Ups" || excercise == "Wide Push Ups" || excercise == "Diamond Push Ups" || excercise == "Tricep Push Ups" {
            let randNumber = Int.random(in: 7...15)
            self.resultLabel.text = "Reps: \(randNumber)"
        } else if excercise == "Shoulder Press" {
            let randNumber = Int.random(in: 3...7)
            self.resultLabel.text = "Reps: \(randNumber)"
        } else if excercise == "Plank" {
            let randNumber = Int.random(in: 30...120)
            self.resultLabel.text = "Reps: \(randNumber)"
        }
    }
    // VARIABLES
    var titleOfLabel: String? = ""
    var randomNumber: Int = 0
    var muscle: String = ""
    var excercise: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = titleOfLabel
    }
    
    // FUNC
    
    func initData(muscle: String, excercise: String) {
        self.muscle = muscle
        self.excercise = excercise
        titleOfLabel = "\(muscle) \(excercise)"
    }


}
