//
//  ViewController.swift
//  Quizzler
//
//  Created by RAJAT SAINI on 22/12/17.
//  Copyright © 2017 RAJAT SAINI. All rights reserved.
//


//63 --- 101
import UIKit

class ViewController: UIViewController {
    
        let allquestions = QuestionBank()
    var pickedAnswer:Bool = false
    var questionNumber : Int = 0
    var score:Int = 0
    
    
    @IBOutlet weak var Progresars: UIProgressView!
    @IBOutlet weak var scoreView: UILabel!
    @IBOutlet weak var questionsLeft: UILabel!
    @IBOutlet weak var questionAsked: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        if sender.tag == 1{
            pickedAnswer = true
            print(pickedAnswer)
        }
        else{
            pickedAnswer = false
            print(pickedAnswer)
        }
        checkAnswer()
        
        questionNumber += 1
        nextQuestion()
    }
    
    func nextQuestion(){
        
        if questionNumber <= 4{
            
        questionAsked.text = allquestions.list[questionNumber].questionText
            updateUI()
            
        }else{
            
            let alert = UIAlertController(title: "End of the quiz", message: "do you want to restart?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func startOver(){
        score = 0
        questionNumber = 0
        nextQuestion()
        
    }
    func checkAnswer(){
        let correctAnswer = allquestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer{
            print("right answer")
            //ProgressHUD.showSuccess("correct")
            score += 1
        }else{
            print("sorry wrong answer")
            //ProgressHUD.showError("wrong!")
        }
        
    }
    
    func updateUI(){
        scoreView.text = "Score: \(score)"
        questionsLeft.text = "\(questionNumber+1)/5"
        
        Progresars.frame.size.width = (view.frame.size.width / 5) * CGFloat(questionNumber+1)
    }
    
    
}

