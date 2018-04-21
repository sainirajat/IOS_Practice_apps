//
//  ViewController.swift
//  myDestiny
//
//  Created by RAJAT SAINI on 06/01/18.
//  Copyright © 2018 RAJAT SAINI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyTextView: UITextView!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    var storyIndex = 1
    
    let story1 = "Story1 Story1 Story1 Story1 Story1 Story1 Story1 Story1Story1 Story1 Story1 Story1Story1 Story1 Story1 Story1Story1 Story1 Story1 Story1"
    let story3 = "hahah haha hahah haha hahah hahahahah hahahahah hahahahah hahahahah hahahahah hahahahah hahahahah hahahahah haha"
    let story2 = "222222222 222222222 222222222 222222222 222222222 222222222 222222222 222222222 222222222"
    let story4 = "444444444444 444444444444 444444444444 444444444444 444444444444 444444444444 444444444444 444444444444 444444444444"
    let story5 = "fifth story fifth story fifth story fifth story fifth storyfifth story fifth story fifth story fifth story fifth story fifth story"
    let story6 = "bomb bomb blast game over bomb bomb blast game over bomb bomb blast game over bomb bomb blast game over bomb bomb blast game over bomb bomb blast game over"
    override func viewDidLoad() {
        super.viewDidLoad()
        restart()
    }

    @IBAction func buttonPressed(_ sender:UIButton){
        
        
        if sender.tag == 1 && (storyIndex == 1 || storyIndex == 2){
            storyTextView.text = story3
            topButton.setTitle("answer 3 A", for: .normal)
            bottomButton.setTitle("answer 3 B", for: .normal)
            storyIndex = 3
        }else if sender.tag == 2 && storyIndex == 1{
            storyTextView.text = story2
            topButton.setTitle("answer 2 A", for: .normal)
            bottomButton.setTitle("answer 2 A", for: .normal)
            storyIndex = 2
        }else if sender.tag == 1 && storyIndex == 3{
            storyTextView.text = story6
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 6
        }else if sender.tag == 2 && storyIndex == 3{
            storyTextView.text = story5
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 5
        }else if sender.tag == 2 && storyIndex == 2{
            storyTextView.text = story4
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 4
        }
        
        if storyIndex == 4 || storyIndex == 5 || storyIndex == 6{
            restartButton.isHidden = false
        }
    }
    @IBAction func restartAction(_ sender: UIButton) {
        storyIndex = 1
        restart()
    }
    
    func restart(){
        storyTextView.text = story1
        topButton.isHidden = false
        bottomButton.isHidden = false
        topButton.setTitle("answer 1 A", for: .normal)
        bottomButton.setTitle("answer 1 B", for: .normal)
        restartButton.isHidden = true
    }
}

