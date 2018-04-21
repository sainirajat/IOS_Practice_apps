//
//  Question.swift
//  Quizzler
//
//  Created by RAJAT SAINI on 22/12/17.
//  Copyright © 2017 RAJAT SAINI. All rights reserved.
//

import Foundation

class Question{
    let questionText:String?
    let answer:Bool?
    
    init(text:String,correctAnswer:Bool) {
        questionText = text
        answer = correctAnswer
    }
}
