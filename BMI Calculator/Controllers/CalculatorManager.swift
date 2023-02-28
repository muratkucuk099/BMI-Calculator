//
//  CalculatorManager.swift
//  BMI Calculator
//
//  Created by Mac on 27.02.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorManager {
   
    var bmi : BMI?
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "Try Again"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        } else if  bmiValue < 25 {
            bmi = BMI(value: bmiValue, advice: "You are wonderful", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .red)
        }
        
    }
    
    
}
