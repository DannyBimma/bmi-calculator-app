//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Daniel Trotman on 04/04/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    // link lable elements
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    // create bmi value property
    var bmiValue: String?
    var advice: String?
    var colour: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // display bmi value, advice, & colour
        bmiLable.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = colour

    }
    
    // link recalculate btn
    @IBAction func reCalcPressed(_ sender: UIButton) {
        // segue back to view controller
        self.dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
