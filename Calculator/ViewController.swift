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

    }

    @IBAction func minusTapped(theButton: UIButton) {
        print(theButton.titleLabel?.text! as Any)

}
    
    @IBAction func clearTapped(theButton: UIButton) {
        result.text = "0"
    }
    
    @IBAction func enterTapped(theButton: UIButton) {
        
    }

}

