//
//  TestViewController.swift
//  quiz App
//
//  Created by Pasha on 11/07/2019.
//  Copyright © 2019 domoji. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question]()
    init() {
        if (UserDefaults.standard.object(forKey: "lang") as! String == "java") {
            
        
        self.javalist()
        }
        else
          if (UserDefaults.standard.object(forKey: "lang")  as! String == "php") {
        self.php()
          }
            else
            if (UserDefaults.standard.object(forKey: "lang")  as! String == "c") {
        self.Clanguage()
        }
    }
    
    func javalist()
    {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "int x[] = new int[]{10,20,30};  Arrays can also be created and initialize as in above statement.", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "In an instance method or a constructor, (this) is a reference to the current object.", correctAnswer: true))
        
        list.append(Question(text: "Garbage Collection is manual process.", correctAnswer: false))
        
        list.append(Question(text: "The JRE deletes objects when it determines that they are no longer being used. This process is called Garbage Collection.", correctAnswer: true))
        
        list.append(Question(text: "Constructor overloading is not possible in Java.", correctAnswer: false))
        
        list.append(Question(text: "Assignment operator is evaluated Left to Right.", correctAnswer: false))
        
        list.append(Question(text: "All binary operators except for the assignment operators are evaluated from Left to Right", correctAnswer: true))
        
        list.append(Question(text: "Java programming is not statically-typed, means all variables should not first be declared before they can be used.", correctAnswer: false))
        
        list.append(Question(text: "In Java SE 7 and later, underscore characters _ can appear anywhere between digits in a numerical literal", correctAnswer: true))
        
        list.append(Question(text: "Variable name can begin with a letter, $, or _.", correctAnswer: true))
        
        list.append(Question(text: "Interfaces can be instantiated.", correctAnswer: false))
        
        list.append(Question(text: "The modifiers public and static cannot written in either order public static or static public.", correctAnswer: false))
        
        list.append(Question(text: "A .class file contains bytecodes?", correctAnswer: true))
    }
    
    
    func php()
    {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Parent constructors are not called implicitly if the child class defines a constructor.", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "Interface constant can be override in class implementing the interface.",correctAnswer: false))
        
        list.append(Question(text: "Static methods can be call with class name and colon operator, $this is not available inside the method declared as static.", correctAnswer: true))
        
        list.append(Question(text: "Static properties can be accessed through the object using the arrow operator ->.", correctAnswer: false))
        
        list.append(Question(text: "If parent class has Final method abc(). Method abc() can be overridden in child class.", correctAnswer: false))
        
        list.append(Question(text: "In PHP, a class can be inherited from one base class and with multiple base classes.", correctAnswer: false))
        
        list.append(Question(text: "To create instance of class new keyword is not required.", correctAnswer: false))
        
        list.append(Question(text: "$this is a reference to the calling object.", correctAnswer: true))
        
        list.append(Question(text: "The variable name is case-sensitive in PHP.", correctAnswer: true))
        
        list.append(Question(text: "PHP is an open source software", correctAnswer: true))
        
       
    }
    
    func Clanguage()
    {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "Only character or integer can be used in switch statement", correctAnswer: false)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "The return type of malloc function is void. ",correctAnswer: false))
        
        list.append(Question(text: "#define is known as preprocessor compiler directive.", correctAnswer: true))
        
        list.append(Question(text: "Algorithm is the graphical representation of logic. ", correctAnswer: false))
        
        list.append(Question(text: "sizeof( ) is a function that returns the size of a variable.", correctAnswer: false))
        
        list.append(Question(text: "The ++ operator increments the operand by 1, whereas, the -- operator decrements it by 1.", correctAnswer: true))
        
        list.append(Question(text: "It is necessary that a loop counter must only be an int. It cannot be a float.", correctAnswer: false))
        
        list.append(Question(text: "A zero value is considered to be false and a non-zero value is considered to be true.", correctAnswer: true))
        
       
        
        
    }
    
}
