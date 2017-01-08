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
    
    }



