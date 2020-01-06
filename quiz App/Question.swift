//
//  TestViewController.swift
//  quiz App
//
//  Created by Pasha on 11/07/2019.
//  Copyright © 2019 domoji. All rights reserved.
//

import Foundation

class Question {
    let questionText : String
    let answer : Bool
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
}

