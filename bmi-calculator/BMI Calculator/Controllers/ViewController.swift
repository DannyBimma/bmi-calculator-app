//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // link value labels
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        // log current height value
        print(sender.value)
        
        // round height value to 2 decimal places
        let roundedHeight: Float = round(sender.value * 100) / 100.0
        
        // log rounded hieght
        print("Rounded height = \(roundedHeight)")
        
        // display values in height value label
        heightValueLabel.text = "\(String(roundedHeight))m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        // log current weight value
        print(sender.value)
        
        // convert weight value to float & log it
        print(Int(sender.value))
        
        // store weight value as Int
        let intWeight: Int = Int(sender.value)
        
        // display values in weight value label
        weightValueLabel.text = "\(String(intWeight))kg"
    }
    
}

