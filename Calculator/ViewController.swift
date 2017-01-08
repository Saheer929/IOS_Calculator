//
//  ViewController.swift
//  Calculator
//
//  Created by Deborah on 1/7/17.
//  Copyright © 2017 Deborah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    
    var userentersNumbers = false
    
    @IBAction func enterNumber (sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userentersNumbers {
            result.text = result.text! + digit
        }else{
            result.text = digit
            userentersNumbers = true
        }
    }
    
    var operandStank = Array<Double>()
    
    @IBAction func enter () {
        userentersNumbers = false
        operandStank.append(displayvalue)
        
        print("operandStack = \(operandStank)")
    }
    
    var displayvalue : Double {
        
        get {
            return NumberFormatter ().number(from: result.text!)!.doubleValue
        }set{
            result.text = "\(newValue)"
            userentersNumbers = false
        }
        
        }
    
    @IBAction func clear () {
        displayvalue = 0
        result.text = "\(displayvalue)"
    }
    
    @IBAction func operate (sender: UIButton) {
        let operation = sender.currentTitle!
        
        if userentersNumbers {
            enter()
        }
        
        switch operation {
        case "+":performOperation1 || performOperation2 {$0 + $1}
        case "−":performOperation1 {$1 - $0}
        case "×":performOperation1 {$0 * $1}
        case "÷":performOperation1 {$0 / $1}
        default: break
        }
    
    }
    
    func performOperation1 (operation: (Double, Double) -> Double) {
        if operandStank.count >= 2 {
            displayvalue = operation (operandStank.removeLast(), operandStank.removeLast())
            
            enter()
        }
        
    }

    func performOperation2 (operation: (Double) -> Double) {
        if operandStank.count >= 1 {
            displayvalue = operation (operandStank.removeLast())
            
            enter()
        }
    }

    func add (op1: Double, op2: Double) -> Double {
        return op1 + op2
    }
    
    func subtract (op1: Double, op2: Double) -> Double {
        return op1 - op2
    }
    
    func multiply (op1: Double, op2: Double) -> Double {
        return op1 * op2
    }
    
    func divide (op1: Double, op2: Double) -> Double {
        return op1 / op2
    }

}



