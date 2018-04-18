//
//  ViewController.swift
//  BMICalculator
//
//  Created by RAJAT SAINI on 22/12/17.
//  Copyright © 2017 RAJAT SAINI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputTextFields: UITextField!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    @IBOutlet weak var HeightInput: UITextField!
    @IBOutlet weak var reports: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        reports.isHidden = true
    }

    @IBAction func SubmitButtonPressed(_ sender: UIButton) {
        
        if nameInput.text == ""{
            nameInput.placeholder = "fill it please"
            return
        }
        if inputTextFields.text == ""{
            inputTextFields.placeholder = "fill it please"
            return
        }
        if weightInput.text == ""{
            weightInput.placeholder = "fill it please"
            return
        }
        if HeightInput.text == ""{
            HeightInput.placeholder = "fill it please"
            return
        }
        guard let height = Float(HeightInput.text!)else{
            print("height not unwrapped!!")
            return
        }
        guard let weight = Int(weightInput.text!)else{
            print("weight not unwrapped properly!")
            return
        }
        
        let heightt = Float(height*height)
        print(heightt)
        let outputStream = String(Float(weight)/(heightt))
        
        reports.text = (" your BMI is \(String(outputStream))")
        //print(outputStream)
       //performSegue(withIdentifier: "showReport", sender: self)
        reports.isHidden = false
}
    
    
    
    
}
