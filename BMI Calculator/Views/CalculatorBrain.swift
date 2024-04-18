//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Chijindu Azubuike on 08/03/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue > 30.5 {
            bmi = BMI(value: bmiValue, advice: "Cut down on pies!", color: .red)
        } else {
            bmi = BMI(value: bmiValue, advice: "Healthy!", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .blue
    }
}
