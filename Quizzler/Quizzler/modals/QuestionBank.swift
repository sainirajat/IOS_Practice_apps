//
//  QuestionBank.swift
//  Quizzler
//
//  Created by RAJAT SAINI on 22/12/17.
//  Copyright © 2017 RAJAT SAINI. All rights reserved.
//

import Foundation
class QuestionBank{
    var list = [Question]()
    
    init() {
                list.append(Question(text: "it is true?", correctAnswer: true))
                list.append(Question(text: "it is not true?", correctAnswer: false))
                list.append(Question(text: "haha ?", correctAnswer: true))
                list.append(Question(text: "data data?", correctAnswer: false))
                list.append(Question(text: "data structure?", correctAnswer: true))
    }
}
