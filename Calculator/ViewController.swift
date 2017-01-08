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
    
    @IBAction func buttonTapped(theButton: UIButton) {
        print(theButton.titleLabel?.text! as Any)
    
    }
    
    @IBAction func plusTapped(theButton: UIButton) {
        print(theButton.titleLabel?.text! as Any)

    }

    @IBAction func minusTapped(theButton: UIButton) {
        print(theButton.titleLabel?.text! as Any)

}

}

