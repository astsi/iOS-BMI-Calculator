//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Aleksa Novcic on 23.2.22..
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

public struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getResult()->String{
        
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice()->String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height:Float, weight: Float){
        
        let bmiValue = weight/pow(height, 2)
        
        if bmiValue < 18.5{
            print("underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more snacks", color: .blue)
        }
        else if bmiValue < 24.9{
            print("normal weight")
            bmi = BMI(value: bmiValue, advice: "Just keep up! Great job!", color: .green)
        }
        else{
            print("overweight")
            bmi = BMI(value: bmiValue, advice: "Eat less snacks and be active!", color: .red)
        }
        //bmi = BMI(bmiValue, advice: ,)
    }
    
}
