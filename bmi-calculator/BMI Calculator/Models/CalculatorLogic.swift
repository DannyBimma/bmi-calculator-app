//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Daniel Trotman on 04/04/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

/* Use a struct to
 calculate the bmi,
 to interpret the bmi,
 provide advice,
 and change background color
 */

struct CalculatorLogic {
    // create bmi property
    var bmi: BMI?
    
    // create get advice method
    func getAdvice() -> String {
        return bmi?.advice ?? "Ain't no fucking advice out here!"
    }
    
    // create get colour method
    func getColour() -> UIColor {
        return bmi?.colour ?? UIColor.black
    }
    
    // create bmi calculation method
    mutating func calcBMI(height: Float, weight: Float) {
        // calculate and log bmi
        let bmiValue = weight / pow(height, 2)
        // bmi = BMI(value: bmiValue, advice: <#T##String#>, colour: <#T##UIColor#>)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat Sein Quick!", colour: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You Good B!", colour: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Seek Help!", colour: UIColor.red)
        }
    }
    
    // create bmi rounding and displaying method
    func getBMI() -> String {
        let roundedBMI = String(round(bmi?.value ?? 0.0 * 10) / 10.0)
        return roundedBMI
    }
}
