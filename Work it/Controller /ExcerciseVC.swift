//
//  Excercise.swift
//  Work it
//
//  Created by Juan Luque on 1/25/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import UIKit

class ExcerciseVC: UIViewController {

    // OUTLETS
    @IBOutlet weak var titleLbl: RoundedLabel!
    @IBOutlet weak var btn1: RoundedButton!
    @IBOutlet weak var btn2: RoundedButton!
    @IBOutlet weak var btn3: RoundedButton!
    
    // @IBACTION
    @IBAction func btn1WasPressed(_ sender: Any) {
        if Excercise.instance.typeOfExcercise == btn1.titleLabel?.text{
            btn1.setDeselected()
            excerciseSelected = false
        } else {
            let nameOfExcercise = btn1.titleLabel?.text
            Excercise.instance.typeOfExcercise = nameOfExcercise
            btn1.setSelected()
            btn2.setDeselected()
            btn3.setDeselected()
            
            excerciseSelected = true
        }
    }
    @IBAction func btn2WasPressed(_ sender: Any) {
        if Excercise.instance.typeOfExcercise == btn2.titleLabel?.text {
            btn2.setDeselected()
            excerciseSelected = false
        } else {
             let nameOfExcercise = btn2.titleLabel?.text
             Excercise.instance.typeOfExcercise = nameOfExcercise
             btn1.setDeselected()
             btn2.setSelected()
             btn3.setDeselected()
             
             excerciseSelected = true
        }
    }
    @IBAction func btn3WasPressed(_ sender: Any) {
        if Excercise.instance.typeOfExcercise == btn3.titleLabel?.text {
            btn3.setDeselected()
            excerciseSelected = false
        } else {
            let nameOfExcercise = btn3.titleLabel?.text
            Excercise.instance.typeOfExcercise = nameOfExcercise
            btn1.setDeselected()
            btn2.setDeselected()
            btn3.setSelected()
            
            excerciseSelected = true
        }
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func confirmBtnPressed(_ sender: Any) {
        if excerciseSelected == false {
            guard let challengeVC = storyboard?.instantiateViewController(identifier: "ChallengeVC") as? ChallengeVC else { return }
            present(challengeVC, animated: true, completion: nil)
        } else {
            guard let generatorVC = storyboard?.instantiateViewController(identifier: "GeneratorVC") as? GeneratorVC else { return }
            
            generatorVC.initData(muscle: Muscle.instance.title!, excercise: Excercise.instance.typeOfExcercise)
            
            present(generatorVC, animated: true, completion: nil)
        }
    }
    
    // VARIABLES
    var titleOfLbl: String = ""
    var typeOfExcercise = Excercise()
    var excerciseSelected: Bool?
    var button1Type: String = ""
    var button2Type: String = ""
    var button3Type: String = ""
    let chestExcercises = ["Push Ups", "Front Lifting", "High Push Ups"]
    let backExcercises = ["Pull Ups", "Wide Push Ups", "Shoulder Press"]
    let legsExcercises = ["Squad", "Lunges", "Jumps"]
    let absExcercises = ["Leg Raise", "Crunch", "Plank"]
    let bicepExcercises = ["Pull Ups", "Dumbbell", "Bar Lifting"]
    let tricepExcercises = ["Diamond Push Ups", "Push Ups", "Dumbbell"]
    
    
    
    // LIFECYCLES
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl.text = titleOfLbl
        btn1.setTitle(button1Type, for: .normal)
        btn2.setTitle(button2Type, for: .normal)
        btn3.setTitle(button3Type, for: .normal)
        
        excerciseSelected = false
        btn1.setDeselected()
        btn2.setDeselected()
        btn3.setDeselected()
    }
    
    
    // FUNC
    func initData(title: String) {
        self.titleOfLbl = title
        
        if title == "Chest" {
            button1Type = chestExcercises[0]
            button2Type = chestExcercises[1]
            button3Type = chestExcercises[2]
        } else if title == "Back" {
            button1Type = backExcercises[0]
            button2Type = backExcercises[1]
            button3Type = backExcercises[2]
        } else if title == "Legs" {
            button1Type = legsExcercises[0]
            button2Type = legsExcercises[1]
            button3Type = legsExcercises[2]
        } else if title == "Abs" {
            button1Type = absExcercises[0]
            button2Type = absExcercises[1]
            button3Type = absExcercises[2]
        } else if title == "Bicep" {
            button1Type = bicepExcercises[0]
            button2Type = bicepExcercises[1]
            button3Type = bicepExcercises[2]
        } else if title == "Tricep" {
            button1Type = tricepExcercises[0]
            button2Type = tricepExcercises[1]
            button3Type = tricepExcercises[2]
        }
    }
}
