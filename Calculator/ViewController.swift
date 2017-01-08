//
//  ViewController.swift
//  Calculator
//
//  Created by Deborah on 1/7/17.
//  Copyright © 2017 Deborah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lastNumber: String = ""
    @IBOutlet weak var result: UILabel!
    @IBOutlet var operation: UILabel!
    
    @IBAction func buttonTapped(theButton: UIButton) {
        if result.text == "0" {
        result.text = theButton.titleLabel?.text
            
        } else {
        result.text = result.text! + (theButton.titleLabel?.text)!
            
        }
    }
    
    @IBAction func plusTapped(theButton: UIButton) {
        print(theButton.titleLabel?.text! as Any)
        if operation.text == "" {
            operation.text = "+"
            lastNumber = result.text!
            result.text = "0"
            
        } else {
            
            result.text = nil
            operation.text = "+"
    }
    }

    @IBAction func minusTapped(theButton: UIButton) {
        print(theButton.titleLabel?.text! as Any)
        if operation.text == "" {
        operation.text = "-"
        lastNumber = result.text!
        result.text = "0"
            
        } else {
        
        result.text = nil
        operation.text = "-"
        
    }
    }
    
    @IBAction func clearTapped(theButton: UIButton) {
        result.text = "0"
        operation.text = ""
        lastNumber = ""
        
    }

    @IBAction func enterTapped(theButton: UIButton) {
        var num1 = lastNumber.toInt()
        var num2 = result.text.toInt()
        if !num1 || !num2 {
        showError()
        return
            
        }
        var answer : Integer = 0
        if operation.text == "-" {
        answer = num1 - num2
        } else if operation.text == "+" {
        answer = num1 + num2
        } else {
        showError()
        return
        }
        
        print(answer)
    }

    func showError () {
        print("There Was An Error")
    }

}
