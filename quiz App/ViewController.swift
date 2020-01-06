//
//  TestViewController.swift
//  quiz App
//
//  Created by Pasha on 11/07/2019.
//  Copyright © 2019 domoji. All rights reserved.
//
import UIKit


class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var currentScore : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if (sender.tag == 1) {
            pickedAnswer = true
        }
        else {
            pickedAnswer = false
        }
        checkAnswer()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score : \(currentScore)"
        if (questionNumber <= allQuestions.list.count-1) {
            progressLabel.text = "\(questionNumber + 1) / \(allQuestions.list.count)"
        }
        if (UserDefaults.standard.object(forKey: "lang") as! String == "java") {
            
            
        progressBar.frame.size.width = (view.frame.size.width / 13 ) * CGFloat(questionNumber + 1)
        }
        else
        if (UserDefaults.standard.object(forKey: "lang") as! String == "php")
        {
                
            progressBar.frame.size.width = (view.frame.size.width / 10 ) * CGFloat(questionNumber + 1)
        }
            else
              if (UserDefaults.standard.object(forKey: "lang")  as! String == "c") {
        
                 progressBar.frame.size.width = (view.frame.size.width / 8 ) * CGFloat(questionNumber + 1)
              }
        
       
    }
    

    func nextQuestion() {
        if questionNumber <= allQuestions.list.count-1 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        }
        else {
            
            let alert = UIAlertController(title: "Awesome", message: "You've finished all your questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
            let correctAnswer = allQuestions.list[questionNumber].answer
            if (pickedAnswer == correctAnswer) {
                print("Answer is Correct")
                ProgressHUD.showSuccess("Correct")
                currentScore += 1
            }
            else {
                print("Answer is Incorrect")
                ProgressHUD.showError("Wrong")
            }
            questionNumber = questionNumber + 1
            updateUI()
        
            nextQuestion()
        
    }
    
    
    func startOver() {
       questionNumber = 0
        currentScore = 0
        updateUI()
        nextQuestion()
    }
    

    
}
