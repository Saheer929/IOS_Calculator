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
            result.Text = digit
            userentersNumbers = true
        }
    }
    
}

