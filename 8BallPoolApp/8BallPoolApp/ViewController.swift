//
//  ViewController.swift
//  8BallPoolApp
//
//  Created by RAJAT SAINI on 21/12/17.
//  Copyright © 2017 RAJAT SAINI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var OutputLabel: UILabel!
    @IBOutlet weak var nextquestionButton: UIButton!
    
    @IBOutlet weak var SubmitButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        OutputLabel.isHidden = true
        nextquestionButton.isHidden = true
    }

    @IBAction func SubmitButtonPressed(_ sender: UIButton) {
        
        if questionTextField.text == ""{
            questionTextField.placeholder = "Fill this up first"
        }else{
            magicbox()
            nextquestionButton.isHidden = false
            SubmitButtonOutlet.isHidden = true
        }
    }
    
    func magicbox() {
        let random = Int(arc4random_uniform(3))
        if random == 1{
            OutputLabel.text = "True"
            OutputLabel.isHidden = false
        }
        else if random == 0{
            OutputLabel.text = "false"
            OutputLabel.isHidden = false
        }
        else{
            OutputLabel.text = "maybe"
            OutputLabel.isHidden = false
        }
    }
    
    @IBAction func nextquestion(_ sender: UIButton) {
        SubmitButtonOutlet.isHidden = false
        questionTextField.text = ""
        nextquestionButton.isHidden = true
//        OutputLabel.text =""
    }
    
    
}

