//
//  ChallengeVC.swift
//  Work it
//
//  Created by Juan Luque on 1/30/20.
//  Copyright © 2020 Juan Luque. All rights reserved.
//

import UIKit

class ChallengeVC: UIViewController {

    // OUTLETS
    @IBOutlet weak var chestBtn: RoundedButton!
    @IBOutlet weak var backBtn: RoundedButton!
    @IBOutlet weak var bicepBtn: RoundedButton!
    @IBOutlet weak var tricepBtn: RoundedButton!
    @IBOutlet weak var legsBtn: RoundedButton!
    @IBOutlet weak var absBtn: RoundedButton!
    @IBOutlet weak var btn1: RoundedButton!
    @IBOutlet weak var btn2: RoundedButton!
    @IBOutlet weak var btn3: RoundedButton!
    @IBOutlet weak var confirmBtn: RoundedButton!
    
    
    // @IBACTIONS
    @IBAction func chestBtnPressed(_ sender: Any) {
        if Muscle.instance.title == chestBtn.titleLabel?.text {
            chestBtn.setDeselected()
            Muscle.instance.title = "Challenge"
            btn1.isHidden = true
            btn2.isHidden = true
            btn3.isHidden = true
        } else {
            chestBtn.setSelected()
            backBtn.setDeselected()
            bicepBtn.setDeselected()
            tricepBtn.setDeselected()
            legsBtn.setDeselected()
            absBtn.setDeselected()
            
            setChestBtns()
            btn1.isHidden = false
            btn2.isHidden = false
            btn3.isHidden = false
            
            Muscle.instance.title = chestBtn.titleLabel?.text
        }
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        if Muscle.instance.title == backBtn.titleLabel?.text {
            backBtn.setDeselected()
            Muscle.instance.title = "Challenge"
            btn1.isHidden = true
            btn2.isHidden = true
            btn3.isHidden = true
        } else {
            backBtn.setSelected()
            chestBtn.setDeselected()
            bicepBtn.setDeselected()
            tricepBtn.setDeselected()
            legsBtn.setDeselected()
            absBtn.setDeselected()
            
            setBackBtns()
            btn1.isHidden = false
            btn2.isHidden = false
            btn3.isHidden = false
            
            Muscle.instance.title = backBtn.titleLabel?.text
        }
    }
    @IBAction func bicepBtnPressed(_ sender: Any) {
        if Muscle.instance.title == bicepBtn.titleLabel?.text {
            bicepBtn.setDeselected()
            Muscle.instance.title = "Challenge"
            btn1.isHidden = true
            btn2.isHidden = true
            btn3.isHidden = true
        } else {
            bicepBtn.setSelected()
            chestBtn.setDeselected()
            backBtn.setDeselected()
            tricepBtn.setDeselected()
            legsBtn.setDeselected()
            absBtn.setDeselected()
            
            setBicepBtns()
            btn1.isHidden = false
            btn2.isHidden = false
            btn3.isHidden = false
            
            Muscle.instance.title = bicepBtn.titleLabel?.text
        }
    }
    @IBAction func tricepBtnPressed(_ sender: Any) {
        if Muscle.instance.title == tricepBtn.titleLabel?.text {
            tricepBtn.setDeselected()
            Muscle.instance.title = "Challenge"
            btn1.isHidden = true
            btn2.isHidden = true
            btn3.isHidden = true
        } else {
            tricepBtn.setSelected()
            chestBtn.setDeselected()
            backBtn.setDeselected()
            bicepBtn.setDeselected()
            legsBtn.setDeselected()
            absBtn.setDeselected()
            
            setTricepBtns()
            btn1.isHidden = false
            btn2.isHidden = false
            btn3.isHidden = false
            
            Muscle.instance.title = tricepBtn.titleLabel?.text
        }
    }
    @IBAction func legsBtnPressed(_ sender: Any) {
        if Muscle.instance.title == legsBtn.titleLabel?.text {
            legsBtn.setDeselected()
            Muscle.instance.title = "Challenge"
            btn1.isHidden = true
            btn2.isHidden = true
            btn3.isHidden = true
        } else {
            legsBtn.setSelected()
            chestBtn.setDeselected()
            backBtn.setDeselected()
            bicepBtn.setDeselected()
            tricepBtn.setDeselected()
            absBtn.setDeselected()
            
            setLegsBtn()
            btn1.isHidden = false
            btn2.isHidden = false
            btn3.isHidden = false
            
            Muscle.instance.title = legsBtn.titleLabel?.text
        }
    }
    @IBAction func absBtnPressed(_ sender: Any) {
        if Muscle.instance.title == absBtn.titleLabel?.text {
            absBtn.setDeselected()
            Muscle.instance.title = "Challenge"
            btn1.isHidden = true
            btn2.isHidden = true
            btn3.isHidden = true
        } else {
            absBtn.setSelected()
            chestBtn.setDeselected()
            backBtn.setDeselected()
            bicepBtn.setDeselected()
            tricepBtn.setDeselected()
            legsBtn.setDeselected()
            
            setAbsBtns()
            btn1.isHidden = false
            btn2.isHidden = false
            btn3.isHidden = false
            
            Muscle.instance.title = absBtn.titleLabel?.text
        }
    }
    @IBAction func btn1Pressed(_ sender: Any) {
        if Excercise.instance.typeOfExcercise == btn1.titleLabel?.text {
            btn1.setDeselected()
            confirmBtn.setDeselected()
            Excercise.instance.typeOfExcercise = "Challenge"
        } else {
            btn1.setSelected()
            btn2.setDeselected()
            btn3.setDeselected()
            confirmBtn.setSelected()
            Excercise.instance.typeOfExcercise = btn1.titleLabel?.text
        }
    }
    @IBAction func btn2Pressed(_ sender: Any) {
        if Excercise.instance.typeOfExcercise == btn2.titleLabel?.text {
            btn2.setDeselected()
            confirmBtn.setDeselected()
            Excercise.instance.typeOfExcercise = "Challenge"
        } else {
            btn1.setDeselected()
            btn2.setSelected()
            btn3.setDeselected()
            confirmBtn.setSelected()
            Excercise.instance.typeOfExcercise = btn2.titleLabel?.text
        }
    }
    @IBAction func btn3Pressed(_ sender: Any) {
        if Excercise.instance.typeOfExcercise == btn3.titleLabel?.text {
            btn3.setDeselected()
            confirmBtn.setDeselected()
            Excercise.instance.typeOfExcercise = "Challenge"
        } else {
            btn1.setDeselected()
            btn2.setDeselected()
            btn3.setSelected()
            confirmBtn.setSelected()
            Excercise.instance.typeOfExcercise = btn3.titleLabel?.text
        }
    }
    @IBAction func confirmBtn(_ sender: Any) {
        if Excercise.instance.typeOfExcercise != "Challenge" {
            guard let generatorVC = storyboard?.instantiateViewController(identifier: "GeneratorVC") as? GeneratorVC else { return }
            generatorVC.initData(muscle: Muscle.instance.title, excercise: Excercise.instance.typeOfExcercise)
            present(generatorVC, animated: true, completion: nil)
        }
    }
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    // LIFECYCLES
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        confirmBtn.setDeselected()
        
        chestBtn.setDeselected()
        backBtn.setDeselected()
        bicepBtn.setDeselected()
        tricepBtn.setDeselected()
        legsBtn.setDeselected()
        absBtn.setDeselected()
        
        btn1.setDeselected()
        btn2.setDeselected()
        btn3.setDeselected()
        
        btn1.isHidden = true
        btn2.isHidden = true
        btn3.isHidden = true
    }
    
    // FUNC
    func setChestBtns() {
        btn1.setTitle(chestExcercises[0], for: .normal)
        btn2.setTitle(chestExcercises[1], for: .normal)
        btn3.setTitle(chestExcercises[2], for: .normal)
    }
    func setBackBtns() {
        btn1.setTitle(backExcercises[0], for: .normal)
        btn2.setTitle(backExcercises[1], for: .normal)
        btn3.setTitle(backExcercises[2], for: .normal)
    }
    func setBicepBtns() {
        btn1.setTitle(bicepExcercises[0], for: .normal)
        btn2.setTitle(bicepExcercises[1], for: .normal)
        btn3.setTitle(bicepExcercises[2], for: .normal)
    }
    func setTricepBtns() {
        btn1.setTitle(tricepExcercises[0], for: .normal)
        btn2.setTitle(tricepExcercises[1], for: .normal)
        btn3.setTitle(tricepExcercises[2], for: .normal)
    }
    func setLegsBtn() {
        btn1.setTitle(legsExcercises[0], for: .normal)
        btn2.setTitle(legsExcercises[1], for: .normal)
        btn3.setTitle(legsExcercises[2], for: .normal)
    }
    func setAbsBtns() {
        btn1.setTitle(absExcercises[0], for: .normal)
        btn2.setTitle(absExcercises[1], for: .normal)
        btn3.setTitle(absExcercises[2], for: .normal)
    }
}
