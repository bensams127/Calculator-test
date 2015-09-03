//
//  ViewController.swift
//  Calculator
//
//  Created by Ben Sams on 9/2/15.
//  Copyright © 2015 Sams. All rights reserved.
//

import UIKit


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber:Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

